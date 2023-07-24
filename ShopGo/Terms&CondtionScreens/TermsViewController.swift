//
//  TermsViewController.swift
//  ShopGo
//
//  Created by Quratulain on 7/23/23.
//

import UIKit
class TermsViewController: UIViewController {
    
    var isReadMoreTapped = false
    
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var nextButton: CustomButton!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textLabelHeight: NSLayoutConstraint!
    @IBOutlet weak var shopGoLogo: UIImageView!
    @IBOutlet weak var termsLabel: UILabel!
    @IBOutlet weak var termsView: UIView!
    @IBOutlet weak var readMoreButton: UIButton!
    @IBOutlet weak var readMoreCentre: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        termsViewDesign()
    }
    
    @IBAction func readMorePressed(_ sender: Any) {
        if isReadMoreTapped {
            readMoreButtonSetupOne()
        }
        else {
            readMoreButtonSetupTwo()
        }
        updateButtonTitle()
        setupButtonStyles()
        view.layoutIfNeeded()
    }
}

