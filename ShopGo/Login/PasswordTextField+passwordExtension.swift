//
//  PasswordTextField+passwordExtension.swift
//  ShopGo
//
//  Created by Waqas Shabir on 8/2/23.
//

import UIKit

extension LoginViewController {
    
    func wrongPasswordShaker() {
        passwordTextField.resignFirstResponder()
        forgotPassword.isHidden = false
        UIView.animate(withDuration: 0.1, delay: 0.0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: UIView.AnimationOptions.curveEaseIn, animations: {
            self.passwordTextField.center.x += 15
        }, completion: nil)
        UIView.animate(withDuration: 0.1, delay: 0.1, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: UIView.AnimationOptions.curveEaseIn, animations: {
            self.passwordTextField.center.x -= 20
        }, completion: nil)
        UIView.animate(withDuration: 0.1, delay: 0.2, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: UIView.AnimationOptions.curveEaseIn, animations: {
            self.passwordTextField.center.x += 15
        }, completion: nil)
        let redLine = CAShapeLayer()
        redLine.frame = CGRect(x: 0, y: passwordTextField.bounds.height - 1, width: passwordTextField.bounds.width, height: 1)
        redLine.backgroundColor = UIColor.red.cgColor
        passwordTextField.layer.addSublayer(redLine)
    }
}
