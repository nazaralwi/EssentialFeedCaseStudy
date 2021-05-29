//
//  Created by Nazar Alwi on 05/05/21
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import Foundation

struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
}
