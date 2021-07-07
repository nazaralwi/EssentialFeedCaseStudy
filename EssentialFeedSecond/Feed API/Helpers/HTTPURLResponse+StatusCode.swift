//
//  HTTPURLResponse+StatusCode.swift
//  EssentialFeedSecond
//
//  Created by Nazar Alwi on 07/07/21.
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import Foundation

extension HTTPURLResponse {
    private static var OK_200: Int { return 200 }
    
    var isOK: Bool {
        return statusCode == HTTPURLResponse.OK_200
    }
}
