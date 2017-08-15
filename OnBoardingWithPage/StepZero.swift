//
//  StepZero.swift
//  OnBoardingWithPage
//
//  Created by yuki.pro on 2017. 8. 14..
//  Copyright © 2017년 yuki. All rights reserved.
//

import UIKit

class StepZero: UIViewController {
    
    @IBOutlet weak var aniBackground: UIImageView!
    @IBOutlet weak var aniLogo: UIImageView!
    @IBOutlet weak var aniText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        aniBackground.alpha = 0
        aniLogo.alpha = 0
        aniText.alpha = 0
        
        let proxy = UIPageControl.appearance()
        proxy.pageIndicatorTintColor = UIColor.darkGray.withAlphaComponent(0.6)
        proxy.currentPageIndicatorTintColor = UIColor.yellow
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        UIView.animate(withDuration: 0.8, animations: {
            self.aniBackground.alpha = 1
        }) { (true) in
            self.showAni02()
        }
    }

    func showAni02() {
        UIView.animate(withDuration: 0.4, animations: {
            self.aniLogo.alpha = 1
        }) { (true) in
            self.showAni03()
        }
    }
    
    func showAni03() {
        UIView.animate(withDuration: 0.2) {
            self.aniText.alpha = 1
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        
        UIView.animate(withDuration: 1) {
            self.aniBackground.alpha = 0
            self.aniLogo.alpha = 0
            self.aniText.alpha = 0
        }
    }
}
