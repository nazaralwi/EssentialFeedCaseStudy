//
//  FeedPresenterTests.swift
//  EssentialFeedSecondTests
//
//  Created by Nazar Alwi on 30/06/21.
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import XCTest

final class FeedPresenter {
    init(view: Any) {
        
    }
}

class FeedPresenterTests: XCTestCase {
    func test_init_doesNotSendMessageToView() {
        let view = ViewSpy()
        
        _ = FeedPresenter(view: view)
        
        XCTAssertTrue(view.message.isEmpty, "Expected no view messages")
    }
    
    // MARK: - Helpers
    
    private class ViewSpy {
        let message = [Any]()
    }
}
