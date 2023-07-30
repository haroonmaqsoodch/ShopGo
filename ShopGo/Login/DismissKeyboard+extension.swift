//
//  DismissKeyboard+extension.swift
//  ShopGo
//
//  Created by Ali Ahmed on 7/30/23.
//

import UIKit

extension LoginViewController {
    func hideKeyboardOnTap() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissMyKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissMyKeyboard(){
        view.endEditing(true)
    }
}
