//
//  Created by Nazar Alwi on 14/05/21
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import Foundation

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}
