//
//  TableViewXibCell.swift
//  ShopGo
//
//  Created by Zoha Nadeem on 8/12/23.
//

import UIKit

class TableViewXibCell: UITableViewCell {
    
    var currentValue = 1
    
    @IBOutlet weak var tableCellView: UIView!
    @IBOutlet weak var cartScreenImage: UIImageView!
    @IBOutlet weak var itemLabel: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var minusButtonLabel: UIButton!
    @IBOutlet weak var plusButtonLabel: UIButton!
    @IBAction func minusButton(_ sender: Any) {
        if currentValue > 0 {
            currentValue -= 1
            valueLabel.text = "\(currentValue)"
        }
    }
    
    @IBAction func plusButton(_ sender: Any) {
        currentValue = currentValue + 1
        valueLabel.text = "\(currentValue)"
    }
}


