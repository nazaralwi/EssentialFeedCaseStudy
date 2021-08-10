//
//  RemoteImageCommentsLoader.swift
//  EssentialFeedSecond
//
//  Created by Nazar Alwi on 10/08/21.
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import Foundation

public typealias RemoteImageCommentsLoader = RemoteLoader<[ImageComment]>

public extension RemoteImageCommentsLoader {
    convenience init(url: URL, client: HTTPClient) {
        self.init(url: url, client: client, mapper: ImageCommentsMapper.map)
    }
}
