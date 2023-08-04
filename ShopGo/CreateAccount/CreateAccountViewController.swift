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
        passwordTextField.delegate = self
        phoneTextField.delegate = self
        emailTextField.delegate = self
        usernameTextField.delegate = self
        usernameTextField.tag = 1
        emailTextField.tag = 2
        phoneTextField.tag = 3
        passwordTextField.tag = 4
        hideKeyboardOnTap()
        configureTextfieldIcons()
        usernameTextField.addTarget(self, action: #selector(buttonEnable), for: .editingChanged)
        emailTextField.addTarget(self, action: #selector(buttonEnable), for: .editingChanged)
        phoneTextField.addTarget(self, action: #selector(buttonEnable), for: .editingChanged)
        passwordTextField.addTarget(self, action: #selector(buttonEnable), for: .editingChanged)
    }
}
