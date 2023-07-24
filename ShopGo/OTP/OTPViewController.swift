//
//  OTPViewController.swift
//  ShopGo
//
//  Created by Muhammad Waleed on 22.07.23.
//

import UIKit

class OTPViewController: UIViewController {
    
    let addDelay: Double = 0.0
    @IBOutlet weak var firstField: UITextField!
    @IBOutlet weak var secondField: UITextField!
    @IBOutlet weak var thirdField: UITextField!
    @IBOutlet weak var fourthField: UITextField!
    @IBOutlet weak var createAccountButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addShadow(button: createAccountButton)
    }
    
    @IBAction func createAccountButtonTapped(_ sender: Any) {
    }
    
    @IBAction func loginButton(_ sender: Any) {
    }
    
    func addShadow(button: UIButton) {
        createAccountButton.layer.shadowColor = UIColor.black.cgColor
        createAccountButton.layer.shadowOffset = CGSize(width: 0, height: 5)
        createAccountButton.layer.shadowRadius = 3.0
        createAccountButton.layer.shadowOpacity = 0.3
    }
}
