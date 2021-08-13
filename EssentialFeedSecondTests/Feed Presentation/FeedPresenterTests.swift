//
//  FeedPresenterTests.swift
//  EssentialFeedSecondTests
//
//  Created by Nazar Alwi on 30/06/21.
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import XCTest
import EssentialFeedSecond

class FeedPresenterTests: XCTestCase {
    func test_title_isLocalized() {
        XCTAssertEqual(FeedPresenter.title, localized("FEED_VIEW_TITLE"))
    }
    
    func test_map_createsViewModel() {
        let feed = uniqueImageFeed().models

        let viewModel = FeedPresenter.map(feed)
        
        XCTAssertEqual(viewModel.feed, feed)
    }
        
    // MARK: - Helpers
        
    private func localized(_ key: String, table: String = "Feed", file: StaticString = #file, line: UInt = #line) -> String {
        let bundle = Bundle(for: FeedPresenter.self)
        let value = bundle.localizedString(forKey: key, value: nil, table: table)
        if value == key {
            XCTFail("Missing localized string for key: \(key) in table: \(table)", file: file, line: line)
        }
        return value
    }
}
