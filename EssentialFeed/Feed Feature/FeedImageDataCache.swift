//
//  FeedImageDataCache.swift
//  EssentialFeed
//
//  Created by Nazar Alwi on 19/07/21.
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import Foundation

public protocol FeedImageDataCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ data: Data, for url: URL, completion: @escaping (Result) -> Void)
}
