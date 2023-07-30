//
//  Inputfield+extension.swift
//  ShopGo
//
//  Created by Ali Ahmed on 7/27/23.
//

import UIKit

extension CreateAccountViewController: UITextFieldDelegate {
  
    func configureTextfieldIcons() {
    guard let usernameImage = UIImage(named: "name") else {return}
    self.addLeftImageToTextfield(textfield: usernameTextField, addImage: usernameImage)
    guard let passwordImage = UIImage(named: "password") else {return}
    self.addLeftImageToTextfield(textfield: passwordTextField, addImage: passwordImage)
    guard let phoneImage = UIImage(named: "phone") else {return}
    self.addLeftImageToTextfield(textfield: phoneTextField, addImage: phoneImage)
    guard let emailImage = UIImage(named: "mail") else {return}
    self.addLeftImageToTextfield(textfield: emailTextField, addImage: emailImage)
  }
  // Adding a left icon to the textfield with padding
  func addLeftImageToTextfield(textfield:UITextField , addImage img:UIImage) {
    let leftImage = UIImageView()
    leftImage.image = img
    let contentView = UIView()
    contentView.addSubview(leftImage)
    contentView.frame = CGRectMake(0, 0, 45, 45)
    leftImage.frame = CGRectMake(10, 0, 45, 45)
    textfield.leftView = contentView
    textfield.leftViewMode = .always
  }
}
