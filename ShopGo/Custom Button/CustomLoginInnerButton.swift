//
//  CustomLoginInnerButton.swift
//  ShopGo
//
//  Created by Quratulain on 7/27/23.
//
import UIKit
class CustomLoginInnerButton : UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setRadius()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setRadius()
    }

    // Setting the custom button corner radius and shadows
    func setRadius() {
        layer.cornerRadius = 22
        layer.masksToBounds = false
    }
}
