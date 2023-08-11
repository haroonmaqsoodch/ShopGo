//
//  CustomTwoTableViewCell.swift
//  ShopGo
//
//  Created by Quratulain on 8/10/23.
//

import UIKit

class CustomTwoTableViewCell: UITableViewCell {
    
    var isAllButtonSelected = false
    let layout = UICollectionViewFlowLayout()
    let imageNames = ["Womanclothing2", "Jewelery2", "Watches2", "Makeup2", "Shoes2"]
    lazy var carouselImages: [UIImage] = {
        return self.imageNames.compactMap { UIImage(named: $0) }
    }()
    var nameLabelTitles : [String] = [ "Clothes Brand", "Watches Brand", "Jewelry Brand", "Makeup Brand", "Shoes Brand"]
    
    @IBOutlet weak var allButtonOutlet: UIButton!
    @IBOutlet weak var recentlyViewedLabel: UILabel!
    @IBOutlet weak var customTwoCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        commonInit()
    }
    
    open override func addSubview(_ view: UIView) {
        super.addSubview(view)
        sendSubviewToBack(contentView)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func allButtonTap(_ sender: Any) {
        isAllButtonSelected.toggle()
        allButtonOutlet.setTitle(isAllButtonSelected ? "All <" : "All >", for: .normal)
    }
}
//MARK: - Collection View Setup
extension CustomTwoTableViewCell : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return nameLabelTitles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomTwoCollectionViewCell", for: indexPath) as! CustomTwoCollectionViewCell
        cell.imageViewOutlet.image = carouselImages[indexPath.item]
        cell.nameLabel.text = nameLabelTitles[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 170)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
    }
    
    func commonInit() {
        setupAllButton()
        setupCollectionView()
        labelSetup()
    }
    // Configure all button
    func setupAllButton() {
        allButtonOutlet.titleLabel?.textColor = .gray
        allButtonOutlet.setTitle("All >", for: .normal)
        allButtonOutlet.tintColor = .lightGray
        allButtonOutlet.isUserInteractionEnabled = true
    }
    // Configure collection view properties
    func setupCollectionView() {
        self.customTwoCollectionView.delegate = self
        self.customTwoCollectionView.dataSource = self
        self.customTwoCollectionView.register(UINib(nibName: "CustomTwoCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CustomTwoCollectionViewCell")
        customTwoCollectionView.showsHorizontalScrollIndicator = false
        customTwoCollectionView.isPagingEnabled = false
        layout.minimumLineSpacing = 10
        layout.scrollDirection = .horizontal
    }
    // Label Setup & Constraints
    func labelSetup() {
        recentlyViewedLabel.textColor = UIColor.black
        recentlyViewedLabel.textAlignment = .left
        recentlyViewedLabel.numberOfLines = 1
        recentlyViewedLabel.font = .boldSystemFont(ofSize: 18)
    }
}
