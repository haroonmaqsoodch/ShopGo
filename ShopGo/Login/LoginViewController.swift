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
        UIApplication.shared.open(URL(string:"https://www.facebook.com")! as URL , options: [:] , completionHandler: nil)
    }
    
    @IBAction func twitterButton(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://twitter.com/i/flow/login?redirect_after_login=%2F")! as URL , options: [:] , completionHandler: nil)
    }
    
    @IBAction func linkedInButton(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://www.linkedin.com")! as URL , options: [:] , completionHandler: nil)       
    }
}
