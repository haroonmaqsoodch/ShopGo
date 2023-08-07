//
//  XibTablevViewCell.swift
//  ShopGo
//
//  Created by Zoha Nadeem on 8/8/23.
//

import Foundation
import UIKit

class XibTableViewCell: UITableViewCell{
    
    var currentValue = 1
    
    @IBOutlet weak var tableCellView: UIView!
    @IBOutlet weak var cartScreenImage: UIImageView!
    @IBOutlet weak var itemLabel: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var minusButtonOutlet: UIButton!
    @IBOutlet weak var plusButtonOutlet: UIButton!
    @IBAction func minusButton(_ sender: Any) {
        currentValue -= 1
        valueLabel.text = "\(currentValue)"
    }
    
    @IBAction func plusButton(_ sender: Any) {
        currentValue = currentValue + 1
        valueLabel.text = "\(currentValue)"
    }
}
