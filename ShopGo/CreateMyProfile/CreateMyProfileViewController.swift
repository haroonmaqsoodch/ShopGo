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

    override func viewDidLoad() {
        super.viewDidLoad()
        loadIconImages()
        profilePictureUI()
    }
}
