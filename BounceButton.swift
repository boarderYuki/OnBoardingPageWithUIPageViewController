//
//  BounceButton.swift
//  Words Idea
//
//  Created by yuki.pro on 2017. 6. 20..
//  Copyright © 2017년 yuki. All rights reserved.
//

import UIKit

class BounceButton: UIButton {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.transform = CGAffineTransform(scaleX: 1.05, y: 1.05)
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 1, options: .allowUserInteraction, animations: {
            self.transform = CGAffineTransform.identity
        }, completion: nil  )
    
        super.touchesBegan(touches, with: event)
    }
}
