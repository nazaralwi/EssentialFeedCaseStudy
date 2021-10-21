//
//  UITableView+HeaderSizing.swift
//  EssentialFeediOS
//
//  Created by Nazar Alwi on 27/07/21.
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import UIKit

extension UITableView {
    func sizeTableHeaderToFit() {
        guard let header = tableHeaderView else { return }
        
        let size = header.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)
        
        let needsFrameUpdate = header.frame.height != size.height
        if needsFrameUpdate {
            header.frame.size.height = size.height
            tableHeaderView = header
        }
    }
}
