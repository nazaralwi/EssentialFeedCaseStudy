//
//  ImageCommentCellController.swift
//  EssentialFeedSecondiOS
//
//  Created by Nazar Alwi on 23/08/21.
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import UIKit
import EssentialFeedSecond

public class ImageCommentCellController: CellController {
    private let model: ImageCommentViewModel
    
    public init(model: ImageCommentViewModel) {
        self.model = model
    }
    
    public func view(in table: UITableView) -> UITableViewCell {
        UITableViewCell()
    }
    
    public func preload() {
        
    }
    
    public func cancelLoad() {
        
    }
}
