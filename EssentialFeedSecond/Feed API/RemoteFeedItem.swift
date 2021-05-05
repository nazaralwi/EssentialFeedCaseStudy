//
//  Created by Nazar Alwi on 05/05/21
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
}
