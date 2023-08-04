//
//  LoginVC.swift
//  GoToShop
//
//  Created by Waqas Shabir on 7/23/23.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var forgotPassword: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var facebookButtonOutlet: UIButton!
    @IBOutlet weak var twitterButtonOutlet: UIButton!
    @IBOutlet weak var linkedInButtonOutlet: UIButton!
  
    var userName: String = "Shopgo321"
    var passWord: String = "Apple321!"
      
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTextField.iconInsideTextField(imageViewNamed: "username")
        passwordTextField.iconInsideTextField(imageViewNamed: "password")
        linkedInButtonImage()
        twitterButtonImage()
        facebookButtonImage()
        passwordTextField.delegate = self
        }

    
    @IBAction func loginButtonAction(_ sender: UIButton) {
        if userNameTextField.text != userName || passwordTextField.text != passWord {
            wrongPasswordShaker()
        }
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


