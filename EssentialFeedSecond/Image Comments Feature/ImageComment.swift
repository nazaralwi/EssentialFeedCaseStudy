//
//  ImageComment.swift
//  EssentialFeedSecond
//
//  Created by Nazar Alwi on 10/08/21.
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import Foundation

public struct ImageComment: Equatable {
    public let id: UUID
    public let message: String
    public let createdAt: Date
    public let username: String
    
    public init(id: UUID, message: String, createdAt: Date, username: String) {
        self.id = id
        self.message = message
        self.createdAt = createdAt
        self.username = username
    }
}
