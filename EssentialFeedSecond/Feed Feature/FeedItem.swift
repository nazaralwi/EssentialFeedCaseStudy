//
//  Created by Nazar Alwi on 05/04/21
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
