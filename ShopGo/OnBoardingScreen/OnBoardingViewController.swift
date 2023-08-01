//
//  OnBoardingViewController.swift
//  ShopGo
//
//  Created by Quratulain on 7/29/23.
//

import UIKit

class OnBoardingViewController : UIViewController {
    
    @IBOutlet var onBoardingImage : UIImageView!{
        didSet{
            onBoardingImage.image = UIImage(named: "welcome2")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
