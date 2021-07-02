//
//  FeedImageViewModel.swift
//  EssentialFeedSecond
//
//  Created by Nazar Alwi on 02/07/21.
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

public struct FeedImageViewModel<Image> {
    public let description: String?
    public let location: String?
    public let image: Image?
    public let isLoading: Bool
    public let shouldRetry: Bool
    
    public var hasLocation: Bool {
        return location != nil
    }
}

public protocol FeedImageView {
    associatedtype Image
    
    func display(_ model: FeedImageViewModel<Image>)
}
