//
//  ImageCommentsMapper.swift
//  EssentialFeedSecond
//
//  Created by Nazar Alwi on 10/08/21.
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import Foundation

final class ImageCommentsMapper {
    private struct Root: Decodable {
        let items: [RemoteFeedItem]
    }
    
    private static var OK_200: Int { return 200 }
    
    static func map(_ data: Data, from response: HTTPURLResponse) throws -> [RemoteFeedItem] {
        guard response.statusCode == OK_200,
            let root = try? JSONDecoder().decode(Root.self, from: data) else {
                throw RemoteImageCommentsLoader.Error.invalidData
        }

        return root.items
    }
}
