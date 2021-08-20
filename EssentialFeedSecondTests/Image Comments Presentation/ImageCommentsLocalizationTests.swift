//
//  ImageCommentsLocalizationTests.swift
//  EssentialFeedSecondTests
//
//  Created by Nazar Alwi on 20/08/21.
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import XCTest
import EssentialFeedSecond

class ImageCommentsLocalizationTests: XCTestCase {
    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalization() {
        let table = "ImageComments"
        let bundle = Bundle(for: ImageCommentsPresenter.self)
        assertLocalizedKeyAndValuesExist(in: bundle, table)
    }
}
