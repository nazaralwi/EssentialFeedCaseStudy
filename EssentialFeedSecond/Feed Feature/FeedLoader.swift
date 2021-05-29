//
//  Created by Nazar Alwi on 05/04/21
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
