//
//  cartAnimationViewController.swift
//  ShopGo
//
//  Created by Abdul wali Latif on 7/22/23.
//

import UIKit

class CartAnimationViewController: UIViewController {
    
    @IBOutlet weak var cartImage: UIImageView! {
        didSet {
            cartImage.image = UIImage(named: "cartImage")
        }
    }
    @IBOutlet weak var shopGoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shopGoLabel.isHidden = true
        animationImage()
        animationlabel()
    }
}
