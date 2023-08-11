//
//  HomeViewController.swift
//  ShopGo
//
//  Created by Muhammad Waleed on 27.07.23.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchTextField : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTextfieldIcons()
        tableViewConfiguration()
    }

    @IBAction func trendingButtonTapped(_ sender: Any) {
    }
    
    @IBAction func burgerMenuButton(_ sender: Any) {
    }
    
    @IBAction func womenButtonTapped(_ sender: Any) {
    }
    
    @IBAction func childrenButtonTapped(_ sender: Any) {
    }
    
    @IBAction func sideMenu(_ sender: Any) {
    }
    
    @IBAction func cameraButton(_ sender: Any) {
    }
    
}
