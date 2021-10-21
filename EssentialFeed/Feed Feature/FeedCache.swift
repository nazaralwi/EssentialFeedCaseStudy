//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Nazar Alwi on 16/07/21.
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>

    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
