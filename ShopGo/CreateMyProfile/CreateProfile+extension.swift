//
//  CreateProfile+extension.swift
//  ShopGo
//
//  Created by Zoha Nadeem on 8/4/23.
//

import Foundation
import UIKit
extension CreateMyProfileViewController{
    
    func loadIconImages(){
        address.image = UIImage(named: "address")
        order.image = UIImage(named: "order")
        setting.image = UIImage(named: "setting")
        profileImage.image = UIImage(named: "ProfilePic")
    }
    
    func profilePictureUI(){
        profileImage.layer.cornerRadius = 15
       
    }
}
