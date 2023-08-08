//
//  ContainerViewController.swift
//  ShopGo
//
//  Created by Muhammad Waleed on 07.08.23.
//

import UIKit

class ContainerViewController: UIViewController {

    @IBOutlet weak var profilePic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profilePic.layer.cornerRadius = 15
        profilePic.image = UIImage(named: "ProfilePic")
    }
    
    @IBAction func homeButton(_ sender: Any) {
    }
    
    @IBAction func exploreButton(_ sender: Any) {
    }
    
    @IBAction func cartButton(_ sender: Any) {
    }
    
    @IBAction func storesButton(_ sender: Any) {
    }
    
    @IBAction func cardDetails(_ sender: Any) {
    }
    
    @IBAction func wishlistButton(_ sender: Any) {
    }
    
    @IBAction func logoutYesButton(_ sender: Any) {
    }
    
    @IBAction func logoutNoButton(_ sender: Any) {
    }
    
}
