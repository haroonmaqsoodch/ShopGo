//
//  cartAnimationViewController.swift
//  ShopGo
//
//  Created by Abdul wali Latif on 7/22/23.
//

import UIKit

class cartAnimationViewController: UIViewController {
    
    @IBOutlet weak var cartImage: UIImageView!
    @IBOutlet weak var shopGoLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        shopGoLabel.isHidden = true
        animationImage()
        animationLabel()
    }
    
    func animationImage(){
        let y = CATransform3DTranslate(CATransform3DIdentity,0,0,0)
        cartImage.layer.transform = y
        UIView.animate(withDuration:2.0){
               self.cartImage.layer.transform = CATransform3DTranslate(CATransform3DIdentity,400,0,0)
        }
    }
    
    func animationLabel(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.1) {
            self.shopGoLabel.isHidden = false
            self.shopGoLabel.layer.opacity = 0
            UIView.animate(withDuration:0.5){
                self.shopGoLabel.layer.opacity = 1
            }
        }
    }
}
