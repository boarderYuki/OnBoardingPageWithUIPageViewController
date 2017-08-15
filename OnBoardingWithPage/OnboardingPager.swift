//
//  OnboardingPager.swift
//  OnBoardingWithPage
//
//  Created by yuki.pro on 2017. 8. 14..
//  Copyright © 2017년 yuki. All rights reserved.
//

import UIKit
class OnBoardingPager : UIPageViewController {
    
    override func viewDidLoad() {
        
        dataSource = self
        
        setViewControllers([getStepZero()], direction: .forward, animated: false, completion: nil)
    }
    
    func getStepZero() -> StepZero {
        return storyboard!.instantiateViewController(withIdentifier: "StepZero") as! StepZero
    }
    
    func getStepOne() -> StepOne {
        return storyboard!.instantiateViewController(withIdentifier: "StepOne") as! StepOne
    }
    
    func getStepTwo() -> StepTwo {
        return storyboard!.instantiateViewController(withIdentifier: "StepTwo") as! StepTwo
    }
    
}


extension OnBoardingPager : UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        if viewController.isKind(of: StepTwo.self) {
            return getStepOne()
        } else if viewController.isKind(of: StepOne.self) {
            return getStepZero()
        } else {
            return nil
        }
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        if viewController.isKind(of: StepZero.self) {
            return getStepOne()
        } else if viewController.isKind(of: StepOne.self) {
            return getStepTwo()
        } else {
            return nil
        }
    }
    
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return 3
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
}
