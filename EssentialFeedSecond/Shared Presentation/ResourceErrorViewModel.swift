//
//  ResourceErrorViewModel.swift
//  EssentialFeedSecond
//
//  Created by Nazar Alwi on 01/07/21.
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

public struct ResourceErrorViewModel {
    public let message: String?
    
    static var noError: ResourceErrorViewModel {
        return ResourceErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> ResourceErrorViewModel {
        return ResourceErrorViewModel(message: message)
    }
}
