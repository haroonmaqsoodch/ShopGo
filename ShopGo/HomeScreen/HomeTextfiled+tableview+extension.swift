//
//  HomeTextfiled+extension.swift
//  ShopGo
//
//  Created by Quratulain on 8/8/23.
//

import UIKit

extension HomeViewController: UITableViewDelegate, UITableViewDataSource  {
    // Left textField image setup
    func placeLeftImage(textField: UITextField , image: UIImage) {
        let leftImage = UIImageView()
        leftImage.image = image
        let contentView = UIView()
        contentView.addSubview(leftImage)
        contentView.frame = CGRectMake(0, 0, 25, 20)
        leftImage.frame = CGRectMake(10, 0, 25, 20)
        textField.leftView = contentView
        textField.leftViewMode = .always
    }
    
    // Right textField image setup
    func placeRightImage(textField: UITextField , image: UIImage) {
        let leftImage = UIImageView()
        leftImage.image = image
        let contentView = UIView()
        contentView.addSubview(leftImage)
        contentView.frame = CGRectMake(0, 0, 25, 20)
        leftImage.frame = CGRectMake(-10, 0, 25, 20)
        textField.rightView = contentView
        textField.rightViewMode = .always
    }
    
    // Configuring textfield icons and padding
    func configureTextfieldIcons() {
        guard let searchImage = UIImage(named: "search") else {return}
        self.placeLeftImage(textField: searchTextField, image: searchImage)
        guard let addressImage = UIImage(named: "address") else {return}
        self.placeRightImage(textField: searchTextField, image: addressImage)
    }
    
    //MARK: - Tableview Setup
    func tableViewConfiguration() {
        tableView.showsHorizontalScrollIndicator = false
        tableView.showsVerticalScrollIndicator = false
        tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        self.tableView.register(UINib(nibName: "MainCarouselTableViewCell", bundle: nil), forCellReuseIdentifier: "MainCarouselTableViewCell")
        self.tableView.register(UINib(nibName: "CustomOneTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomOneTableViewCell")
        self.tableView.register(UINib(nibName: "CustomCarouselTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomCarouselTableViewCell")
        self.tableView.register(UINib(nibName: "CustomTwoTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomTwoTableViewCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "MainCarouselTableViewCell", for: indexPath) as! MainCarouselTableViewCell
            cell.mainCarouselCollectionView.reloadData()
            cell.selectionStyle = .none
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomOneTableViewCell", for: indexPath) as! CustomOneTableViewCell
            cell.customOneCollectionView.reloadData()
            cell.recommendedLabel.text = "Recommended for you"
            cell.selectionStyle = .none
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCarouselTableViewCell", for: indexPath) as! CustomCarouselTableViewCell
            cell.customCarouselCollectionView.reloadData()
            cell.selectionStyle = .none
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTwoTableViewCell", for: indexPath) as! CustomTwoTableViewCell
            cell.customTwoCollectionView.reloadData()
            cell.recentlyViewedLabel.text = "Recently viewed"
            cell.selectionStyle = .none
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "MainCarouselTableViewCell", for: indexPath) as! MainCarouselTableViewCell
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 300
        }
        else if indexPath.row == 2 {
            return 300
        }
        return 220
    }
}
