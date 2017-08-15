//
//  StepOne.swift
//  OnBoardingWithPage
//
//  Created by yuki.pro on 2017. 8. 14..
//  Copyright © 2017년 yuki. All rights reserved.
//

import UIKit

class StepOne: UIViewController {
    
    @IBOutlet weak var aniScreenShot: UIImageView!
    @IBOutlet weak var aniDesc: UILabel!
    
    @IBOutlet weak var screenBottom: NSLayoutConstraint!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        screenBottom.constant = 0
        aniDesc.alpha = 0
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        UIView.animate(withDuration: 1.0, animations: {
            self.screenBottom.constant = 0
            self.view.layoutIfNeeded()
        }) { (true) in
            self.showAni02()
        }
        
//        UIView.animate(withDuration: 1, delay: 1.0, options: .curveEaseIn , animations: {
//            self.screenHeight.constant = 250
//            self.view.layoutIfNeeded()
//        }) { (true) in
//            self.showAni02()
//        }
    }
    
    func showAni02() {
        UIView.animate(withDuration: 0.4) {
            self.aniDesc.alpha = 1
        }
    }
    
//    func showAni03() {
//        UIView.animate(withDuration: 0.2) {
//            self.aniText.alpha = 1
//        }
//    }
//    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        
        UIView.animate(withDuration: 1) {
            
            self.aniDesc.alpha = 0
        }
        
        UIView.animate(withDuration: 1) {
            self.screenBottom.constant = -250
            self.view.layoutIfNeeded()
        }
    }
    
}
