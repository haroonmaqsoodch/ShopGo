//
//  Button+extension.swift
//  ShopGo
//
//  Created by Ali Ahmed on 7/28/23.
//

import UIKit

extension CreateAccountViewController {
    @objc func buttonEnable() {
        let regex: String = "^(?=.*[a-z])(?=.*[0-9])(?=.*[A-Z])(?=.*[@#$%^&*]).{6,}$"
        let passwordPredicate = NSPredicate(format: "SELF MATCHES %@", regex)

        if usernameTextField.text!.count > 0 && emailTextField.text!.count > 0 && phoneTextField.text!.count >= 10 && passwordPredicate.evaluate(with: passwordTextField.text!) {
            nextButtonOutlet.isEnabled = true
            nextButtonOutlet.isSelected = true
        } else {
            nextButtonOutlet.isEnabled = false
            nextButtonOutlet.isSelected = false
        }
    }
}
