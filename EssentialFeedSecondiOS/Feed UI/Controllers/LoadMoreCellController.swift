//
//  LoadMoreCellController.swift
//  EssentialFeedSecondiOS
//
//  Created by Nazar Alwi on 07/09/21.
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import UIKit
import EssentialFeedSecond

public class LoadMoreCellController: NSObject, UITableViewDataSource {
    private let cell = LoadMoreCell()
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        cell
    }
}

extension LoadMoreCellController: ResourceLoadingView, ResourceErrorView {
    public func display(_ viewModel: ResourceLoadingViewModel) {
        cell.isLoading = viewModel.isLoading
    }
    
    public func display(_ viewModel: ResourceErrorViewModel) {
        cell.message = viewModel.message
    }
}
