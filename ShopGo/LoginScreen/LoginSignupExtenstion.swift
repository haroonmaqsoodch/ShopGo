//
//  LoginSignupExtenstion.swift
//  ShopGo
//
//  Created by Quratulain on 7/26/23.
//

import UIKit

extension LoginSignupViewController {
    // function for radius of login button inside the view
    func buttonCornerStyle() {
        loginButtonOutlet.layer.cornerRadius = 22
        loginButtonOutlet.layer.masksToBounds = true
    }
}
