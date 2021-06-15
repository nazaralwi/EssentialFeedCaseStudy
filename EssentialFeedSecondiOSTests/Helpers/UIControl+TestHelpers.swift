//
//  Created by Nazar Alwi on 15/06/21
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import UIKit

extension UIControl {
    func simulate(event: UIControl.Event) {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: event)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
