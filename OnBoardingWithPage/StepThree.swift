//
//  StepThree.swift
//  OnBoardingWithPage
//
//  Created by yuki.pro on 2017. 8. 15..
//  Copyright © 2017년 yuki. All rights reserved.
//

import UIKit


class StepThree: UIViewController {
    
    
    @IBOutlet weak var aniScreenShot: UIImageView!
    @IBOutlet weak var aniDesc: UILabel!
    @IBOutlet weak var aniLine: UIView!
    @IBOutlet weak var aniStartButton: DesignableButton!
    
    @IBOutlet weak var screenBottom: NSLayoutConstraint!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 에니메이션 초기화
        screenBottom.constant = -250
        aniDesc.alpha = 0
        aniLine.alpha = 0
        aniStartButton.alpha = 0
        
    }
    
    
    
    @IBAction func getStartButton(_ sender: Any) {
        print("getStarted")
    }
    
    
    
    //MARK: - 에니메이션 체인
    //이전 에니메이션이 완료되면 다음 에니메이션을 호출
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        UIView.animate(withDuration: 0.2, animations: {
            self.aniLine.alpha = 0.7
        }) { (true) in
            self.showAni02()
        }
        
    }
    
    func showAni02() {
        UIView.animate(withDuration: 0.4, animations: {
            self.screenBottom.constant = 0
            self.view.layoutIfNeeded()
        }) { (true) in
            self.showAni03()
        }
        
    }
    
    func showAni03() {
        UIView.animate(withDuration: 0.2, animations: {
            self.aniDesc.alpha = 1
        }) { (true) in
            self.showAni04()
        }
    }
    
    func showAni04() {
        UIView.animate(withDuration: 0.4) {
            self.aniStartButton.alpha = 1
        }
    }

    
    // 화면 가려질때 에니메이션을 다시 초기화
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        
        UIView.animate(withDuration: 1) {
            self.aniDesc.alpha = 0
            self.aniStartButton.alpha = 0
        }
        
        UIView.animate(withDuration: 1) {
            self.screenBottom.constant = -250
            self.view.layoutIfNeeded()
        }
    }
    
}

