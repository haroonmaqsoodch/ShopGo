//
//  CartScreenViewController.swift
//  ShopGo
//
//  Created by Zoha Nadeem on 8/7/23.
//

import UIKit

class CartScreenViewController: UIViewController {
    
    var cartScreenItemsArray =  ["Birthday Decoration","Birthday Decoration"]
    var moneyLabel = ["30$", "30$"]
    var cartScreenImageAray = [UIImage(named: "birthday"), UIImage(named: "birthday2")]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "XibCellView", bundle: nil), forCellReuseIdentifier: "TableViewXibCell")
    }
    
    @IBAction func continueButton(_ sender: Any) {
    }
}
