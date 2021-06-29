//
//  ErrorView.swift
//  EssentialFeedSecondiOS
//
//  Created by Nazar Alwi on 29/06/21.
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import UIKit

public final class ErrorView: UIView {
    @IBOutlet private var label: UILabel!
    
    public var message: String? {
        get { return label.text }
        set { label.text = newValue }
    }
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        
        label.text = nil
    }
}
