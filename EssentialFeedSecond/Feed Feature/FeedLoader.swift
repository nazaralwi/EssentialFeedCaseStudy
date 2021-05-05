//
//  Created by Nazar Alwi on 05/04/21
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedImage])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
