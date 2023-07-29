//
//  CreateAccountViewController.swift
//  ShopGo
//
//  Created by Ali Ahmed on 7/22/23.
//

import UIKit

class CreateAccountViewController: UIViewController {
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var nextButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardOnTap()
        configureTextfieldIcons()
    }
}
