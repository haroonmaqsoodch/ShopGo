//
//  SignupScreenViewController.swift
//  ShopGo
//
//  Created by Zoha Nadeem on 7/23/23.
//

import UIKit

class SignupScreenViewController: UIViewController {
    
    @IBOutlet weak var shopGoImage: UIImageView!
    @IBOutlet weak var createAccountOutlet: UIButton!
    @IBOutlet weak var loginOutlet: UIButton!
    @IBAction func createAccountButton(_ sender: Any) {
    }
    
    @IBAction func loginButton(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createAccountButtonUI()
        loginButtonUI()
    }
    
    func loginButtonUI(){
        loginOutlet.layer.shadowColor = UIColor.black.cgColor
        loginOutlet.layer.shadowRadius = 5
        loginOutlet.layer.shadowOpacity = 0.5
        loginOutlet.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        loginOutlet.layer.masksToBounds = false
    }
    
    func createAccountButtonUI(){
        createAccountOutlet.layer.shadowColor = UIColor.black.cgColor
        createAccountOutlet.layer.shadowRadius = 5
        createAccountOutlet.layer.shadowOpacity = 0.5
        createAccountOutlet.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        createAccountOutlet.layer.masksToBounds = false
    }
}
