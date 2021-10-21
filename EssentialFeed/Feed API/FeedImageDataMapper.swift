//
//  FeedImageDataMapper.swift
//  EssentialFeed
//
//  Created by Nazar Alwi on 11/08/21.
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import Foundation

public final class FeedImageDataMapper {
    public enum Error: Swift.Error {
        case invalidData
    }
    
    public static func map(_ data: Data, from response: HTTPURLResponse) throws -> Data {
        guard response.isOK, !data.isEmpty else {
            throw Error.invalidData
        }
        
        return data
    }
}
