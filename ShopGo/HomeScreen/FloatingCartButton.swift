//
//  FloatingCartButton.swift
//  ShopGo
//
//  Created by Ali Ahmed on 8/9/23.
//

import UIKit

class FloatingCart: UIButton {
    
    var cartfloatingButton: UIButton {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
        
        if let originalImage = UIImage(named: "floatingCart") {
            let newSize = CGSize(width: 30, height: 30)
            UIGraphicsBeginImageContextWithOptions(newSize, false, 0.0)
            originalImage.draw(in: CGRect(origin: .zero, size: newSize))
            let resizedImage = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            
            button.setImage(resizedImage, for: .normal)
        }
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 30
        button.backgroundColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.00)
        
        return button
    }
}
