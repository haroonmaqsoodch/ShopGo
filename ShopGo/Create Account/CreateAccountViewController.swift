//
//  CreateAccountViewController.swift
//  ShopGo
//
//  Created by Ali Ahmed on 7/22/23.
//

import UIKit

class CreateAccountViewController: UIViewController {
    
    @IBOutlet weak var nextButtonLayout: UIButton!
    
    @IBAction func nextButton(_ sender: Any) {
    }
    @IBAction func loginButton(_ sender: Any) {
    }
    
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
        nextButtonLayout.layer.shadowColor = UIColor.black.cgColor
        nextButtonLayout.layer.shadowOffset = CGSize(width: 0, height: 7)
        nextButtonLayout.layer.shadowRadius = 5.0
        nextButtonLayout.layer.shadowOpacity = 0.3
    }
    
    @objc func dismissMyKeyboard(){
        view.endEditing(true)
    }
}
