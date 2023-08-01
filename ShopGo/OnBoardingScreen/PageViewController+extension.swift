//
//  PageViewController+extension.swift
//  ShopGo
//
//  Created by Quratulain on 7/29/23.
//

import UIKit

extension OnBoardingPageViewController {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let currentIndex = pages.firstIndex(of: viewController), currentIndex > 0  else {
            return nil
        }
        return pages[currentIndex - 1]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let currentIndex = pages.firstIndex(of: viewController), currentIndex < pages.count - 1 else {
            return nil
        }
        return pages[currentIndex + 1]
    }
    
    // function to switch between the approriate viewControllers using identifier
    func onBoardingViewController(withidentifier identifier : String) -> UIViewController {
        return UIStoryboard(name: "LoginSignupStoryboard", bundle: nil).instantiateViewController(withIdentifier: identifier)
    }
    
    // fucntion to set a userDefault flag and updating the dots with current page index
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        if completed {
            UserDefaults.standard.set(true, forKey: "OnboardingCompleted")
            if let currentPage = pageViewController.viewControllers?.first,
               let index = viewControllerIndex(currentPage) {
                pageController.currentPage = index
            }
        }
    }
    
    // function to find the current index of page viewController
    func viewControllerIndex(_ viewController: UIViewController) -> Int? {
        for (index, vc) in pages.enumerated() {
            if vc === viewController {
                return index
            }
        }
        return nil
    }
    
    // function to configure the page controller dots programmtically
    func configurePageControl(){
        pageController = UIPageControl(frame: CGRect(x: 0, y: UIScreen.main.bounds.maxY - 80, width: UIScreen.main.bounds.width, height: 1))
        pageController.numberOfPages = pages.count
        pageController.currentPage = 0
        pageController.tintColor = UIColor.blue
        pageController.pageIndicatorTintColor = UIColor.lightGray
        pageController.currentPageIndicatorTintColor = UIColor.systemIndigo
        pageController.transform = CGAffineTransform(scaleX: 2, y: 2)
        self.view.addSubview(pageController)
    }
}
