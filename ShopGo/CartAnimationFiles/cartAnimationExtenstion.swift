//
//  cartAnimationExtenstion.swift
//  ShopGo
//
//  Created by Abdul wali Latif on 7/24/23.
//

import UIKit

extension CartAnimationViewController {
    
   func animationImage(){
        let x = CATransform3DTranslate(CATransform3DIdentity,0,0,0)
        cartImage.layer.transform = x
        UIView.animate(withDuration:2.0){
            self.cartImage.layer.transform = CATransform3DTranslate(CATransform3DIdentity,400,0,0)
        }
    }
    
    func animationlabel(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.1) {
            self.shopGoLabel.isHidden = false
            self.shopGoLabel.layer.opacity = 0
            UIView.animate(withDuration:0.5){
                self.shopGoLabel.layer.opacity = 1
            }
        }
    }
}
