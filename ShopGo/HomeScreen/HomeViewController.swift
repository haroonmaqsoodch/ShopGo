//
//  HomeViewController.swift
//  ShopGo
//
//  Created by Muhammad Waleed on 27.07.23.
//

import UIKit

class HomeViewController: UIViewController {
    
    let cartfloatingButton = FloatingCart().cartfloatingButton
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarSetup()
    }
    
    @IBAction func trendingButtonTapped(_ sender: Any) {
    }
    
    @IBAction func burgerMenuButton(_ sender: Any) {
    }
    
    @IBAction func womenButtonTapped(_ sender: Any) {
    }
    
    @IBAction func childrenButtonTapped(_ sender: Any) {
    }
    
    @IBAction func sideMenu(_ sender: Any) {
    }
    
    @IBAction func cameraButton(_ sender: Any) {
    }
    
}
