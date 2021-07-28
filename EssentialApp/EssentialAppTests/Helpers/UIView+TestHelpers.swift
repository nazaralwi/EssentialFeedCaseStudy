//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Nazar Alwi on 28/07/21.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.main.run(until: Date())
    }
}
