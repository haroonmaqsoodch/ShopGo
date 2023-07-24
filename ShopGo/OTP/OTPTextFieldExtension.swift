//
//  OTPTextFieldExtension.swift
//  ShopGo
//
//  Created by Muhammad Waleed on 22.07.23.
//

import UIKit

extension OTPViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let currentText = textField.text! as NSString
        let newText = currentText.replacingCharacters(in: range, with: string)
        if newText.count > 0 {
            switch textField {
            case firstField:
                DispatchQueue.main.asyncAfter(deadline: .now() + addDelay) {
                    self.secondField.becomeFirstResponder()
                }
            case secondField:
                DispatchQueue.main.asyncAfter(deadline: .now() + addDelay) {
                    self.thirdField.becomeFirstResponder()
                }
            case thirdField:
                DispatchQueue.main.asyncAfter(deadline: .now() + addDelay) {
                    self.fourthField.becomeFirstResponder()
                }
            case fourthField:
                if fourthField.text != nil  {
                    DispatchQueue.main.asyncAfter(deadline: .now() + addDelay) {
                        self.fourthField.resignFirstResponder()
                    }
                }
                
            default:
                break
            }
            
        } else {
            switch textField {
            case fourthField:
                DispatchQueue.main.asyncAfter(deadline: .now() + addDelay) {
                    self.thirdField.becomeFirstResponder()
                }
            case thirdField:
                DispatchQueue.main.asyncAfter(deadline: .now() + addDelay) {
                    self.secondField.becomeFirstResponder()
                }
            case secondField:
                DispatchQueue.main.asyncAfter(deadline: .now() + addDelay) {
                    self.firstField.becomeFirstResponder()
                }
                
            default:
                break
            }
        }
        return newText.count <= 1
    }
}

