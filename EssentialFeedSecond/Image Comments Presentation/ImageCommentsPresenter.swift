//
//  ImageCommentsPresenter.swift
//  EssentialFeedSecond
//
//  Created by Nazar Alwi on 20/08/21.
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import Foundation

public final class ImageCommentsPresenter {
    public static var title: String {
        return NSLocalizedString("IMAGE_COMMENTS_VIEW_TITLE",
             tableName: "ImageComments",
             bundle: Bundle(for: Self.self),
             comment: "Title for the image comments view")
    }
}
