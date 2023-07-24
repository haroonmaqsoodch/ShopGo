//
//  TermsExtension.swift
//  ShopGo
//
//  Created by Quratulain on 7/24/23.
//

import UIKit
extension TermsViewController {
    
    // function to calculate label height
    func getLabelHeight(text: String, width: CGFloat, font: UIFont) -> CGFloat {
        let textLabel = UILabel(frame: .zero)
        textLabel.frame.size.width = width
        textLabel.font = font
        textLabel.numberOfLines = 0
        textLabel.text = text
        textLabel.sizeToFit()
        return textLabel.frame.size.height
    }
    
    // function to setup corners of button and views
    func termsViewDesign() {
        termsView.layer.cornerRadius = 8
        readMoreButton.layer.cornerRadius = 5
    }
    
    // read more setup for collapsed state
    func readMoreButtonSetupOne() {
        let titleWeight: UIFont.Weight = .ultraLight
        let fontSize: CGFloat = 15
        let buttonFont = UIFont.systemFont(ofSize: fontSize, weight: titleWeight)
        readMoreButton.titleLabel?.font = buttonFont
        readMoreCentre.constant = 0
        readMoreButton.backgroundColor = UIColor(named: "ReadMoreButton")
        readMoreButton.setTitle("Read more", for: .normal)
        readMoreButton.layer.cornerRadius = 5
        readMoreButton.setImage(UIImage(systemName: "chevron.down"), for:.normal)
        textLabel.numberOfLines = 8
        textLabelHeight.constant = 80
        isReadMoreTapped = false
    }
    
    // read more setup for expanded state
    func readMoreButtonSetupTwo() {
        readMoreButton.setTitle("", for: .normal)
        readMoreButton.setImage(UIImage(systemName: "chevron.up"), for: .normal)
        readMoreButton.backgroundColor = .clear
        readMoreCentre.constant = ((view.frame.width/2) - 100)
        textLabelHeight.constant = getLabelHeight(text: "Lorem ipsum dolor sit amet. Est repudiandae minus id voluptatem enim sed exercitationem vero et odio provident ut doloremque dolorem aut inventore harum. Sed quibusdam vero At nihil exercitationem vel fugiat itaque. Sit eius pariatur eum minus facere sit officiis optio sit accusamus perferendis ex omnis autem.Non beatae dolores et voluptatem voluptatem quo eveniet culpa est placeat modi. Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet.", width: view.bounds.width, font: UIFont.systemFont(ofSize: 15, weight: .light))
        isReadMoreTapped = true
    }
    
    // Function to set the button title based on the expanded state
    func updateButtonTitle() {
        let buttonTitle = isReadMoreTapped ? "" : "Read More"
        readMoreButton.setAttributedTitle(attributedStringForTitle(buttonTitle), for: .normal)
    }
    
    // Function to create an attributed string for the button title
    func attributedStringForTitle(_ title: String) -> NSAttributedString {
        let attributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 15, weight: .light),
            .foregroundColor: UIColor.black // Set the desired color
        ]
        return NSAttributedString(string: title, attributes: attributes)
    }
    
    // Function to set up button styles
    func setupButtonStyles() {
        readMoreButton.titleLabel?.numberOfLines = 1
        readMoreButton.titleLabel?.lineBreakMode = .byTruncatingTail
        readMoreButton.titleLabel?.adjustsFontSizeToFitWidth = true
        readMoreButton.titleLabel?.minimumScaleFactor = 0.5
    }
}
