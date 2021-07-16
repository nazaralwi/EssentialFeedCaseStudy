//
//  FeedLoaderStub.swift
//  EssentialAppTests
//
//  Created by Nazar Alwi on 16/07/21.
//

import EssentialFeedSecond

class FeedLoaderStub: FeedLoader {
    private let result: FeedLoader.Result
    
    init(result: FeedLoader.Result) {
        self.result = result
    }
    
    func load(completion: @escaping (FeedLoader.Result) -> Void) {
        completion(result)
    }
}
