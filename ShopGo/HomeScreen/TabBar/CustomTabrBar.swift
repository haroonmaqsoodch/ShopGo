//
//  CustomTabBar.swift
//  ShopGo
//
//  Created by Ali Ahmed on 8/8/23.
//

import UIKit

class CustomTabBar: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupInitialAppearance()
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        if item.title != "Home" {
            removeVisualEffects()
            self.tabBar.backgroundColor = UIColor(red: 0.83, green: 0.82, blue: 0.95, alpha: 1.00)
        } else {
            setupInitialAppearance()
        }
    }
    
    func setupInitialAppearance() {
        self.tabBar.backgroundColor = UIColor(red: 163.0 / 255.0, green: 170.0 / 255.0, blue: 204.0 / 255.0, alpha: 1.00)
        self.tabBar.layer.cornerRadius = 25
        self.tabBar.layer.masksToBounds = true
        self.tabBar.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
    }
    
    func removeVisualEffects() {
        for subview in self.tabBar.subviews {
            if subview is UIVisualEffectView {
                subview.removeFromSuperview()
            }
        }
        self.tabBar.backgroundColor = UIColor(red: 0.83, green: 0.82, blue: 0.95, alpha: 1.00)
        self.tabBar.layer.cornerRadius = 0
        self.tabBar.layer.masksToBounds = false
        self.tabBar.layer.maskedCorners = []
    }
}
