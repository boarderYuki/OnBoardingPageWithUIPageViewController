//
//  DesignableButton.swift
//  Words Idea
//
//  Created by yuki.pro on 2017. 6. 20..
//  Copyright © 2017년 yuki. All rights reserved.
//

import UIKit

@IBDesignable class DesignableButton: BounceButton {
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
}
