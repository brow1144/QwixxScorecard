//
//  File.swift
//  QwixxScorecard
//
//  Created by Kyle Brown on 7/5/17.
//  Copyright © 2017 Kyle Brown. All rights reserved.
//

import Foundation

@IBDesignable class MyButton: UIButton {
    override func layoutSubviews() {
        super.layoutSubviews()
        
        updateCornerRadius()
    }
    
    @IBInspectable var rounded: Bool = false {
        didSet {
            updateCornerRadius()
        }
    }
    
    func updateCornerRadius() {
        layer.cornerRadius = rounded ? 10 : 0
        //frame.size.height / 2
    }
}
