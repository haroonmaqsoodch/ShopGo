//
//  cartScreenExtension.swift
//  ShopGo
//
//  Created by Zoha Nadeem on 8/8/23.
//

import Foundation
import UIKit

extension CartScreenViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartScreenItemsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewXibCell", for: indexPath) as! TableViewXibCell
        cell.itemLabel.text = cartScreenItemsArray[indexPath.row]
        cell.moneyLabel.text = moneyLabel[indexPath.row]
        cell.cartScreenImage.image = cartScreenImageAray[indexPath.row]
        cell.cartScreenImage.layer.cornerRadius = 15
        cell.layer.cornerRadius = 15
        cell.plusButtonLabel.layer.cornerRadius = cell.plusButtonLabel.frame.size.width/2
        cell.plusButtonLabel.clipsToBounds = true
        cell.minusButtonLabel.layer.cornerRadius = cell.minusButtonLabel.frame.size.width/2
        cell.minusButtonLabel.clipsToBounds = true
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        tableView.contentInset = UIEdgeInsets(top: 30, left: 0, bottom: 0, right: 0)
        return 200
    }
}
