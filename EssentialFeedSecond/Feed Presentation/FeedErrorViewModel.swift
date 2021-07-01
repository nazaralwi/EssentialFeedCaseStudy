//
//  FeedErrorViewModel.swift
//  EssentialFeedSecond
//
//  Created by Nazar Alwi on 01/07/21.
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

public struct FeedErrorViewModel {
    public let message: String?
    
    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
