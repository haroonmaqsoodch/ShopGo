//
//  SignupScreenViewController.swift
//  ShopGo
//
//  Created by Zoha Nadeem on 7/23/23.
//

import UIKit

class LoginSignupViewController: UIViewController {
    
    let navigationManager = NavigationManager()
    
    @IBOutlet weak var buttonView: UIView!
    @IBOutlet weak var shopGoImage: UIImageView!
    @IBOutlet weak var createButtonOutlet: UIButton!
    @IBOutlet weak var loginButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }
    
    @IBAction func createAccoutTap(_ sender: Any) {
        navigationManager.navigate(to: .Terms, in: "TermsStoryBoard", from: self)
    }
    @IBAction func LoginButtonTap(_ sender: Any) {
        navigationManager.navigate(to: .Login, in: "LoginScreen", from: self)
    }
}
