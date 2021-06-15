//
//  Created by Nazar Alwi on 15/06/21
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import UIKit
import EssentialFeedSecond

final class FeedRefreshViewController: NSObject {
    private(set) lazy var view: UIRefreshControl = {
        let view = UIRefreshControl()
        view.addTarget(self, action: #selector(refresh), for: .valueChanged)
        return view
    }()
    
    private let feedLoader: FeedLoader
    
    init(feedLoader: FeedLoader) {
        self.feedLoader = feedLoader
    }
    
    var onRefresh: (([FeedImage]) -> Void)?
    
    @objc func refresh() {
        view.beginRefreshing()
        feedLoader.load { [weak self] result in
            if let feed = (try? result.get()) {
                self?.onRefresh?(feed)
            }
            self?.view.endRefreshing()
        }
    }
}
