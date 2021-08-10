//
//  Created by Nazar Alwi on 07/04/21
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import Foundation

public typealias RemoteFeedLoader = RemoteLoader<[FeedImage]>

public extension RemoteFeedLoader {
    convenience init(url: URL, client: HTTPClient) {
        self.init(url: url, client: client, mapper: FeedItemsMapper.map)
    }
}
