//
//  CoreDataFeedStore+FeedImageDataLoader.swift
//  EssentialFeedSecond
//
//  Created by Nazar Alwi on 12/07/21.
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import Foundation

extension CoreDataFeedStore: FeedImageDataStore {
    public func insert(_ data: Data, for url: URL, completion: @escaping (FeedImageDataStore.InsertionResult) -> Void) {
        
    }
    
    public func retrieve(dataForURL url: URL, completion: @escaping (FeedImageDataStore.RetrievalResult) -> Void) {
        completion(.success(.none))
    }
}
