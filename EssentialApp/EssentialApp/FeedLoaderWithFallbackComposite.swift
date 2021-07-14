//
//  FeedLoaderWithFallbackComposite.swift
//  EssentialApp
//
//  Created by Nazar Alwi on 14/07/21.
//

import Foundation
import EssentialFeedSecond

public class FeedLoaderWithFallbackComposite: FeedLoader {
    private let primary: FeedLoader
    private let fallback: FeedLoader
    
    public init(primary: FeedLoader, fallback: FeedLoader) {
        self.primary = primary
        self.fallback = fallback
    }
    
    public func load(completion: @escaping (FeedLoader.Result) -> Void) {
        primary.load { [weak self] result in
            switch result {
            case .success:
                completion(result)
            
            case .failure:
                self?.fallback.load(completion: completion)
            }
        }
    }
}
