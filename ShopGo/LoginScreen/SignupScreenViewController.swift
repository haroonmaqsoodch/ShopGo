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
        loginOutlet.layer.borderWidth = 3
        loginOutlet.layer.cornerRadius = 22
        let redValue: CGFloat = 72.0 / 255.0
        let greenValue: CGFloat = 78.0 / 255.0
        let blueValue: CGFloat = 153.0 / 255.0
        let customBorderColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
        loginOutlet.layer.borderColor = customBorderColor.cgColor
        loginOutlet.layer.shadowColor = UIColor.black.cgColor
        loginOutlet.layer.shadowRadius = 5
        loginOutlet.layer.shadowOpacity = 0.5
        loginOutlet.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        loginOutlet.layer.masksToBounds = false
    }
    
    func createAccountButtonUI(){
        createAccountOutlet.layer.shadowColor = UIColor.black.cgColor
        createAccountOutlet.layer.shadowRadius = 15
        createAccountOutlet.layer.shadowOpacity = 0.5
        createAccountOutlet.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        createAccountOutlet.layer.masksToBounds = false
    }
}
