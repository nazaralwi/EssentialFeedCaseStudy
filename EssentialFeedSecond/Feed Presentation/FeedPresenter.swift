//
//  FeedPresenter.swift
//  EssentialFeedSecond
//
//  Created by Nazar Alwi on 01/07/21.
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import Foundation

public final class FeedPresenter {
    public static var title: String {
        return NSLocalizedString("FEED_VIEW_TITLE",
             tableName: "Feed",
             bundle: Bundle(for: FeedPresenter.self),
             comment: "Title for the feed view")
    }
    
    public static func map(_ feed: [FeedImage]) -> FeedViewModel {
        FeedViewModel(feed: feed)
    }
}
