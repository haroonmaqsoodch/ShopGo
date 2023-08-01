//
//  mediaExtensionViewController.swift
//  ShopGo
//
//  Created by Abdul wali Latif on 8/1/23.
//

import UIKit

extension LoginViewController {
    
    func facebookButton(){
        UIApplication.shared.open(URL(string:"https://www.facebook.com")! as URL , options: [:] , completionHandler: nil)
    }
    
    func twitterButton(){
        UIApplication.shared.open(URL(string:"https://twitter.com/i/flow/login?redirect_after_login=%2F")! as URL , options: [:] , completionHandler: nil)
    }
    
    func linkedInButton(){
      UIApplication.shared.open(URL(string:"https://www.linkedin.com")! as URL , options: [:] , completionHandler: nil)
        }
}
