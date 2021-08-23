//
//  UIRefreshControl+Helpers.swift
//  EssentialFeedSecondiOS
//
//  Created by Nazar Alwi on 29/06/21.
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
