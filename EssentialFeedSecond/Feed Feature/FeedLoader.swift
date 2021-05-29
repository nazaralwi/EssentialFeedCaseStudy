//
//  Created by Nazar Alwi on 05/04/21
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
    func load(completion: @escaping (Result) -> Void)
}
