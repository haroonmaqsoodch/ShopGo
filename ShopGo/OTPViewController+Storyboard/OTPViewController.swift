//
//  OTPViewController.swift
//  ShopGo
//
//  Created by Muhammad Waleed on 22.07.23.
//

import UIKit

class OTPViewController: UIViewController {
    
    @IBOutlet weak var firstField: UITextField!
    @IBOutlet weak var secondField: UITextField!
    @IBOutlet weak var thirdField: UITextField!
    @IBOutlet weak var fourthField: UITextField!
    @IBOutlet weak var createAccountButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addShadow(button: createAccountButton)
    }
    
    @IBAction func createAccountButtonTapped(_ sender: Any) {
    }
    
    @IBAction func loginButton(_ sender: Any) {
    }
    
    func addShadow(button: UIButton) {
        createAccountButton.layer.shadowColor = UIColor.black.cgColor
        createAccountButton.layer.shadowOffset = CGSize(width: 0, height: 5)
        createAccountButton.layer.shadowRadius = 3.0
        createAccountButton.layer.shadowOpacity = 0.3
    }
}

extension OTPViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if (textField.text?.count)! < 1 && string.count > 0 {
            switch textField {
            case firstField:
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    self.secondField.becomeFirstResponder()
                }
            case secondField:
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    self.thirdField.becomeFirstResponder()
                }
            case thirdField:
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    self.fourthField.becomeFirstResponder()
                }
            case fourthField:
                if fourthField.text != nil  {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                        self.fourthField.resignFirstResponder()
                    }
                }
            default: break
            }
            
        } else if (textField.text?.count ?? 0) >= 1 {
            switch textField {
            case fourthField:
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    self.thirdField.becomeFirstResponder()
                }
            case thirdField:
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    self.secondField.becomeFirstResponder()
                }
            case secondField:
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    self.firstField.becomeFirstResponder()
                }
            default: break
            }
        }
        return true
    }
}
