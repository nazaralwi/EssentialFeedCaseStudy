//
//  ImageCommentsEndpoint.swift
//  EssentialFeedSecond
//
//  Created by Nazar Alwi on 30/08/21.
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import Foundation

public enum ImageCommentsEndpoint {
    case get(UUID)
    
    public func url(baseURL: URL) -> URL {
        switch self {
        case let .get(id):
            return baseURL.appendingPathComponent("/v1/image/\(id)/comments")
        }
    }
}
