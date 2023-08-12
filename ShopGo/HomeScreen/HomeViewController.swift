//
//  HomeViewController.swift
//  ShopGo
//
//  Created by Muhammad Waleed on 27.07.23.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var containerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        containerView.isHidden = true
    }
    
    @IBAction func trendingButtonTapped(_ sender: Any) {
    }
    
    @IBAction func burgerMenuButton(_ sender: Any) {
        openAndHideContainerView()
    }
    
    @IBAction func menButtonTapped(_ sender: Any) {
    }
    
    @IBAction func womenButtonTapped(_ sender: Any) {
    }
    
    @IBAction func childrenButtonTapped(_ sender: Any) {
    }
    
    @IBAction func cameraButton(_ sender: Any) {
    }
    
}
