//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Nazar Alwi on 02/07/21.
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?
    
    public var hasLocation: Bool {
        return location != nil
    }
}
