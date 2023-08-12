//
//  ContainerVeiwExtension.swift
//  ShopGo
//
//  Created by Muhammad Waleed on 07.08.23.
//

import UIKit

extension HomeViewController {
    
    func openAndHideContainerView() {
        containerView.isHidden = !containerView.isHidden
        if containerView.isHidden == false {
            title = ""
        } else {
            title = "ShopGo"
        }
    }
}
