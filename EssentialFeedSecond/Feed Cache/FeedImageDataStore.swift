//
//  FeedImageDataStore.swift
//  EssentialFeedSecond
//
//  Created by Nazar Alwi on 09/07/21.
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import Foundation

public protocol FeedImageDataStore {
    typealias Result = Swift.Result<Data?, Error>
    func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
}
