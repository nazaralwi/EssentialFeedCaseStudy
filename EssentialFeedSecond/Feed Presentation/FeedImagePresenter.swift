//
//  FeedImagePresenter.swift
//  EssentialFeedSecond
//
//  Created by Nazar Alwi on 02/07/21.
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import Foundation

public final class FeedImagePresenter {
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(
            description: image.description,
            location: image.location)
    }
}
