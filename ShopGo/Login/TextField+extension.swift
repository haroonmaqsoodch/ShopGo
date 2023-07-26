//
//  TextField+extension.swift
//  ShopGo
//
//  Created by Waqas Shabir on 7/25/23.
//

import UIKit

extension UITextField {
    
    func iconInsideTextField(imageViewNamed: String) {
        let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 20, height: 20))
        imageView.image = UIImage(named: imageViewNamed)
        let imageViewContainerView = UIView(frame: CGRect(x: 0, y: 0, width: 55, height: 40))
        imageViewContainerView.addSubview(imageView)
        leftView = imageViewContainerView
        leftViewMode = .always
        self.tintColor = .blue
    }    
}
