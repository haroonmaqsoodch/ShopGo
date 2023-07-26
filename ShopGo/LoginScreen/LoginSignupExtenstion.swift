//
//  LoginSignupExtenstion.swift
//  ShopGo
//
//  Created by Quratulain on 7/26/23.
//

import UIKit

extension LoginSignupVC {
    // function for radius of login button inside the view
    func loginButtonRadius() {
        loginButtonOutlet.layer.cornerRadius = 22
        loginButtonOutlet.layer.masksToBounds = true
    }
}
