//
//  ContainerVeiwExtension.swift
//  ShopGo
//
//  Created by Muhammad Waleed on 07.08.23.
//

import UIKit

extension HomeViewController {
    
    func openAndHideContainerView() {
        if containerView.isHidden {
            title = ""
            let frame = containerView.frame
            containerView.frame = CGRect(x: -frame.size.width, y: frame.origin.y, width: frame.size.width, height: frame.size.height)
            containerView.isHidden = false
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: {
                self.containerView.frame = frame
            }, completion: nil)
        } else {
            let frame = containerView.frame
            title = "ShopGo"
            UIView.animate(withDuration: 0.5, animations: {
                self.containerView.frame = CGRect(x: -frame.size.width, y: frame.origin.y, width: frame.size.width, height: frame.size.height)
            }) { _ in
                self.containerView.frame = frame
                self.containerView.isHidden = true
            }
        }
    }
}
