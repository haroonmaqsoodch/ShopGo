//
//  CreateAccountViewController.swift
//  ShopGo
//
//  Created by Ali Ahmed on 7/22/23.
//

import UIKit

class CreateAccountViewController: UIViewController {
    
    
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardOnTap()
        setup()
    }
    
    func hideKeyboardOnTap() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissMyKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func setup() {
        nextButton.layer.shadowColor = UIColor.black.cgColor
        nextButton.layer.shadowOffset = CGSize(width: 0, height: 7)
        nextButton.layer.shadowRadius = 5.0
        nextButton.layer.shadowOpacity = 0.3
    }
    
    @objc func dismissMyKeyboard(){
        view.endEditing(true)
    }
}
