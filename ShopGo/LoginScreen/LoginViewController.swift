//
//  LoginVC.swift
//  GoToShop
//
//  Created by Waqas Shabir on 7/23/23.
//

import UIKit
class LoginViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var userNameTextField: UITextField! {
        didSet {
            self.userNameTextField.iconInsideTextField(imageViewNamed: "username")
        }
    }
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//            self.userNameTextField.leftImage(imageViewNamed: "username")
            self.passwordTextField.iconInsideTextField(imageViewNamed: "password")
        }

    @IBAction func loginButtonAction(_ sender: UIButton) {
    }
}
