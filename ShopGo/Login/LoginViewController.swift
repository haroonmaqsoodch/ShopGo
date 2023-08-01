//
//  LoginVC.swift
//  GoToShop
//
//  Created by Waqas Shabir on 7/23/23.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTextField.iconInsideTextField(imageViewNamed: "username")
        passwordTextField.iconInsideTextField(imageViewNamed: "password")
        }
    
    @IBAction func loginButtonAction(_ sender: UIButton) {
    }
    
    @IBAction func facebookButton(_ sender: Any) {
        facebookButton()
    }
    
    @IBAction func twitterButton(_ sender: Any) {
        twitterButton()
    }
    
    @IBAction func linkedinButton(_ sender: Any) {
        linkedInButton()
    }
}


