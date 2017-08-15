//
//  Helper.swift
//  OnBoardingWithPage
//
//  Created by yuki.pro on 2017. 8. 15..
//  Copyright © 2017년 yuki. All rights reserved.
//

import Foundation

class Helper {
    
    // helper function to delay whatever's in the callback
    class func delay(_ seconds: Double, completion:@escaping ()->()) {
        let popTime = DispatchTime.now() + Double(Int64( Double(NSEC_PER_SEC) * seconds )) / Double(NSEC_PER_SEC)
        DispatchQueue.main.asyncAfter(deadline: popTime) {
            completion()
        }
    }
    
}
