//
//  FeedImagePresenterTests.swift
//  EssentialFeedSecondTests
//
//  Created by Nazar Alwi on 01/07/21.
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import XCTest
import EssentialFeedSecond

class FeedImagePresenterTests: XCTestCase {
    func test_map_createsViewModel() {
        let image = uniqueImage()
        
        let viewModel = FeedImagePresenter.map(image)
        
        XCTAssertEqual(viewModel.location, image.location)
        XCTAssertEqual(viewModel.description, image.description)
    }
}
