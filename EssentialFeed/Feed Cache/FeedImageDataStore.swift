//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Nazar Alwi on 09/07/21.
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import Foundation

public protocol FeedImageDataStore {
    typealias RetrievalResult = Swift.Result<Data?, Error>
    typealias InsertionResult = Swift.Result<Void, Error>
    
    func insert(_ data: Data, for url: URL, completion: @escaping (InsertionResult) -> Void)
    func retrieve(dataForURL url: URL, completion: @escaping (RetrievalResult) -> Void)
}