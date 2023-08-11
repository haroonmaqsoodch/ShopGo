//
//  WishListViewController.swift
//  ShopGo
//
//  Created by Abdul wali Latif on 8/7/23.
//

import UIKit

class WishListViewController: UIViewController {
    
    var wishListLabelArray: [String] = ["Watch","Heels","Shoes" ,"Shoes", "Bag", "Dress", "Watch", "Bag", "Shoes", "Dress"]
    var wishListMoneyArray: [String] = ["20$"]
    var wishListImageArray = [
        UIImage(named: "watch"),
        UIImage(named: "heel"),
        UIImage(named: "shoes"),
        UIImage(named: "shoes1"),
        UIImage(named: "bag"),
        UIImage(named: "dress"),
        UIImage(named: "watch1"),
        UIImage(named: "bag1"),
        UIImage(named: "sandal"),
        UIImage(named: "dress1")]
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var numberOfItemLabel: UILabel!
    @IBOutlet weak var ellipsisButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpWishListButton()
    }
    
    @IBAction func ellipsisButton(_ sender: Any) {
    }
}
