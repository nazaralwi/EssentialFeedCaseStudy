//
//  FeedEndpoint.swift
//  EssentialFeed
//
//  Created by Nazar Alwi on 30/08/21.
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import Foundation

public enum FeedEndpoint {
    case get
    
    public func url(baseURL: URL) -> URL {
        switch self {
        case .get:
            return baseURL.appendingPathComponent("/v1/feed")
        }
    }
}
