//
//  CreateMyProfileViewController.swift
//  ShopGo
//
//  Created by Zoha Nadeem on 8/3/23.
//

import UIKit

class CreateMyProfileViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var address: UIImageView!
    @IBOutlet weak var order: UIImageView!
    @IBOutlet weak var setting: UIImageView!

    @IBAction func accountDetailsButton(_ sender: Any) {
    }
    
    @IBAction func cardDetailsButton(_ sender: Any) {
    }
    
    @IBAction func notificationsButton(_ sender: Any) {
    }
    
    @IBAction func deliveryInformationButton(_ sender: Any) {
    }
    
    @IBAction func paymentInformationButton(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupImages()
    }
}
