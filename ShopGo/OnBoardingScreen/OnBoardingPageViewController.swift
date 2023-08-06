//
//  OnBoardingPageViewController.swift
//  ShopGo
//
//  Created by Quratulain on 7/29/23.
//

import UIKit

class OnBoardingPageViewController : UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    var pageController : UIPageControl!
    var pageViewController : UIPageViewController!
    lazy var pages: [UIViewController] = {
        return [self.onBoardingViewController(withidentifier: "OnBoardingViewController"),
                self.onBoardingViewController(withidentifier: "LoginSignupViewController")]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        pageController = UIPageControl()
        pageViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal)
        dataSource = self
        delegate = self
        configurePageControl()
    }
}
