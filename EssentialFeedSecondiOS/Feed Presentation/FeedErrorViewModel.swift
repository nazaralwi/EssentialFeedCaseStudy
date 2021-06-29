//
//  FeedErrorViewModel.swift
//  EssentialFeedSecondiOS
//
//  Created by Nazar Alwi on 29/06/21.
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

struct FeedErrorViewModel {
    let message: String?
    
    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
