//
//  Created by Nazar Alwi on 20/05/21
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import XCTest
import EssentialFeedSecond

extension FeedStoreSpecs where Self: XCTestCase {
    func assertThatRetrieveDeliversEmptyOnEmptyCache(on sut: FeedStore, file: StaticString = #file, line: UInt = #line) {
        expect(sut, toRetrieve: .empty)
    }
    
    func assertThatRetrieveHasNoSideEffectsOnEmptyCache(on sut: FeedStore, file: StaticString = #file, line: UInt = #line) {
        expect(sut, toRetrieveTwice: .empty)
    }
    
    func assertThatRetrieveDeliversFoundValuesOnNonEmptyCache(on sut: FeedStore, file: StaticString = #file, line: UInt = #line) {
        let feed = uniqueImageFeed().local
        let timestamp = Date()
        
        insert((feed, timestamp), to: sut)
        
        expect(sut, toRetrieve: .found(feed: feed, timestamp: timestamp))
    }
    
    func assertThatRetrieveHasNoSideEffectsOnNonEmptyCache(on sut: FeedStore, file: StaticString = #file, line: UInt = #line) {
        let feed = uniqueImageFeed().local
        let timestamp = Date()
        
        insert((feed, timestamp), to: sut)
        
        expect(sut, toRetrieveTwice: .found(feed: feed, timestamp: timestamp))
    }
    
    func assertThatInsertDeliversNoErrorOnEmptyCache(on sut: FeedStore, file: StaticString = #file, line: UInt = #line) {
        let insertionError = insert((uniqueImageFeed().local, Date()), to: sut)
        
        XCTAssertNil(insertionError, "Expected to insert cache successfully")
    }
    
    func assertThatInsertDeliversNoErrorOnNonEmptyCache(on sut: FeedStore, file: StaticString = #file, line: UInt = #line) {
        insert((uniqueImageFeed().local, Date()), to: sut)
        
        let insertionError = insert((uniqueImageFeed().local, Date()), to: sut)
        
        XCTAssertNil(insertionError, "Expected to override cache successfully")
    }
    
    func assertThatInsertOverridesPreviouslyInsertedCacheValues(on sut: FeedStore, file: StaticString = #file, line: UInt = #line) {
        insert((uniqueImageFeed().local, Date()), to: sut)
        
        let latestFeed = uniqueImageFeed().local
        let latestTimestamp = Date()
        insert((latestFeed, latestTimestamp), to: sut)
        
        expect(sut, toRetrieve: .found(feed: latestFeed, timestamp: latestTimestamp))
    }
    
    func assertThatDeleteCachedFeedDeliversNoErrorOnEmptyCache(on sut: FeedStore, file: StaticString = #file, line: UInt = #line) {
        let deletionError = delete(from: sut)
        
        XCTAssertNil(deletionError, "Expected empty cache deletion to succeed")
    }
    
    func assertThatDeleteCachedFeedHasNoSideEffectsOnEmptyCache(on sut: FeedStore, file: StaticString = #file, line: UInt = #line) {
        delete(from: sut)
        
        expect(sut, toRetrieve: .empty)
    }
    
    func assertThatDeleteCachedFeedDeliversNoErrorOnNonEmptyCache(on sut: FeedStore, file: StaticString = #file, line: UInt = #line) {
        insert((uniqueImageFeed().local, Date()), to: sut)
        
        let deletionError = delete(from: sut)
        
        XCTAssertNil(deletionError, "Expected non-empty cache deletion to succeed")
    }
    
    func assertThatDeleteCachedFeedEmptiesPreviouslyInsertedCache(on sut: FeedStore, file: StaticString = #file, line: UInt = #line) {
        insert((uniqueImageFeed().local, Date()), to: sut)
        
        delete(from: sut)
        
        expect(sut, toRetrieve: .empty)
    }
    
    func assertThatSideEffectsRunSerially(on sut: FeedStore, file: StaticString = #file, line: UInt = #line) {
        var completeOperationsInOrder = [XCTestExpectation]()
        
        let op1 = expectation(description: "Operation 1")
        sut.insert(uniqueImageFeed().local, timestamp: Date()) { _ in
            completeOperationsInOrder.append(op1)
            op1.fulfill()
        }
        
        let op2 = expectation(description: "Operation 2")
        sut.deleteCachedFeed { _ in
            completeOperationsInOrder.append(op2)
            op2.fulfill()
        }
        
        let op3 = expectation(description: "Operation 3")
        sut.insert(uniqueImageFeed().local, timestamp: Date()) { _ in
            completeOperationsInOrder.append(op3)
            op3.fulfill()
        }
        
        waitForExpectations(timeout: 5.0)

        XCTAssertEqual(completeOperationsInOrder, [op1, op2, op3], "Expected side-effects to run serially but operations finished in the wrong order")
    }
    
    @discardableResult
    func insert(_ cache: (feed: [LocalFeedImage], timestamp: Date), to sut: FeedStore) -> Error? {
        let exp = expectation(description: "Wait for cache insertion")
        var insertionError: Error?
        sut.insert(cache.feed, timestamp: cache.timestamp) { receivedInsertionError in
            insertionError = receivedInsertionError
            exp.fulfill()
        }
        wait(for: [exp], timeout: 1.0)
        return insertionError
    }
    
    @discardableResult
    func delete(from sut: FeedStore) -> Error? {
        let exp = expectation(description: "Wait for cache deletion")
        var deletionError: Error?
        sut.deleteCachedFeed() { receivedDeletionError in
            deletionError = receivedDeletionError
            exp.fulfill()
        }
        wait(for: [exp], timeout: 1.0)
        return deletionError
    }
    
    func expect(_ sut: FeedStore, toRetrieveTwice expectedResult: RetrieveCachedFeedResult, file: StaticString = #file, line: UInt = #line) {
        expect(sut, toRetrieve: expectedResult, file: file, line: line)
        expect(sut, toRetrieve: expectedResult, file: file, line: line)
    }
    
    func expect(_ sut: FeedStore, toRetrieve expectedResult: RetrieveCachedFeedResult, file: StaticString = #file, line: UInt = #line) {
        let exp = expectation(description: "Wait for cache retrieval")
        
        sut.retrieve { retrievedResult in
            switch (expectedResult, retrievedResult) {
            case (.empty, .empty),
                 (.failure, .failure):
                break;
                
            case let (.found(expected), .found(retrieved)):
                XCTAssertEqual(retrieved.feed, expected.feed)
                XCTAssertEqual(retrieved.timestamp, expected.timestamp)
                
            default:
                XCTFail("Expected to retrieve \(expectedResult), got \(retrievedResult) instead", file: file, line: line)
            }
            
            exp.fulfill()
        }

        wait(for: [exp], timeout: 1.0)
    }
}