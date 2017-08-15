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

        // 에니메이션 초기화
        aniBackground.alpha = 0
        aniLogo.alpha = 0
        aniText.alpha = 0
        
        //페이지 인디케이터 재설정
        let proxy = UIPageControl.appearance()
        proxy.pageIndicatorTintColor = UIColor.darkGray.withAlphaComponent(0.5)
        proxy.currentPageIndicatorTintColor = UIColor(red: 236/255, green: 190/255, blue: 0/255, alpha: 1)
        
    }

    //MARK: - 에니메이션 체인
    //이전 에니메이션이 완료되면 다음 에니메이션을 호출
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        UIView.animate(withDuration: 0.6, animations: {
            self.aniBackground.alpha = 1
        }) { (true) in
            self.showAni02()
        }
    }

    func showAni02() {
        UIView.animate(withDuration: 0.3, animations: {
            self.aniLogo.alpha = 1
        }) { (true) in
            self.showAni03()
        }
    }
    
    func showAni03() {
        UIView.animate(withDuration: 0.1) {
            self.aniText.alpha = 1
        }
    }
    
    
    // 화면 가려질때 에니메이션을 다시 초기화
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        
        UIView.animate(withDuration: 1) {
            self.aniBackground.alpha = 0
            self.aniLogo.alpha = 0
            self.aniText.alpha = 0
        }
    }
}
