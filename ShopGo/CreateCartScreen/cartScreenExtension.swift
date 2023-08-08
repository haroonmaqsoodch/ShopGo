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
        let cell = tableView.dequeueReusableCell(withIdentifier: "CartScreenXibTableViewCell", for: indexPath) as! CartScreenXibTableViewCell
        cell.itemLabel.text = cartScreenItemsArray[indexPath.row]
        cell.moneyLabel.text = moneyLabel[indexPath.row]
        cell.cartScreenImage.image = cartScreenImageAray[indexPath.row]
        cell.cartScreenImage.layer.cornerRadius = 15
        cell.layer.cornerRadius = 50
        cell.plusButtonOutlet.layer.cornerRadius = cell.plusButtonOutlet.frame.size.width/2
        cell.plusButtonOutlet.clipsToBounds = true
        cell.minusButtonOutlet.layer.cornerRadius = cell.minusButtonOutlet.frame.size.width/2
        cell.minusButtonOutlet.clipsToBounds = true
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}
