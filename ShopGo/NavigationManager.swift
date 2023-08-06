//
//  NavigationManager.swift
//  ShopGo
//
//  Created by Quratulain on 8/5/23.
//

import UIKit

enum AppScreen {
    case LoginSignup
    case Onboarding
    case CreateAccount
    case Login
    case Terms
    case Home
    case MyProfile
    case OTP
    
    var viewControllerIdentifier: String {
        switch self {
        case .LoginSignup:
            return "LoginSignupViewController"
        case .Onboarding:
            return "OnBoardingPageViewController"
        case .CreateAccount:
            return "CreateAccountViewController"
        case .Login:
            return "LoginViewController"
        case .Terms:
            return "TermsViewController"
        case .Home:
            return "HomeViewController"
        case .MyProfile:
            return "MyprofileViewController"
        case .OTP:
            return "OTPViewController"
        }
    }
}

class NavigationManager {
    func navigate(to screen: AppScreen, in storyboardName: String,from viewController: UIViewController) {
        
        let destinationViewController: UIViewController
        
        switch screen {
        case .LoginSignup, .Onboarding, .CreateAccount, .Home, .Login, .MyProfile, .OTP, .Terms:
            let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
            destinationViewController = storyboard.instantiateViewController(withIdentifier: screen.viewControllerIdentifier)
        }
        viewController.navigationController?.pushViewController(destinationViewController, animated: true)
    }
}
