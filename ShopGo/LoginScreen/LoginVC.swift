//
//  LoginVC.swift
//  GoToShop
//
//  Created by Waqas Shabir on 7/23/23.
//

import UIKit
class LoginVC: UIViewController {

    @IBOutlet weak var logBtnLabel: UIButton!
    @IBOutlet weak var userNameTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.userNameTxt.leftImage(imageViewNamed: "username")
        self.passwordTxt.leftImage(imageViewNamed: "password")
    }

    @IBAction func logInButton(_ sender: UIButton) {
    }
}
