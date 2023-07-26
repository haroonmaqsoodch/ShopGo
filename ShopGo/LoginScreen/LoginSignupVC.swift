//
//  SignupScreenViewController.swift
//  ShopGo
//
//  Created by Zoha Nadeem on 7/23/23.
//

import UIKit

class LoginSignupVC: UIViewController {
    
    @IBOutlet weak var buttonView: UIView!
    @IBOutlet weak var shopGoImage: UIImageView!
    @IBOutlet weak var createButtonOutlet: UIButton!
    @IBOutlet weak var loginButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButtonRadius()
    }
    
    @IBAction func createAccoutTap(_ sender: Any) {
    }
    @IBAction func LoginButtonTap(_ sender: Any) {
    }
}
