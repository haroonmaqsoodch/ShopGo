//
//  CustomOneTableViewCell.swift
//  ShopGo
//
//  Created by Quratulain on 8/10/23.
//

import UIKit

class CustomOneTableViewCell: UITableViewCell {
    
    var isAllButtonSelected = false
    let layout = UICollectionViewFlowLayout()
    let imageNames = ["Womenclothing", "Jewelery1", "Watches", "Makeup", "Shoes"]
    lazy var carouselImages: [UIImage] = {
        return self.imageNames.compactMap { UIImage(named: $0) }
    }()
    var nameLabelTitles : [String] = [ "Clothes Brand", "Watches Brand", "Jewelry Brand", "Makeup Brand", "Shoes Brand"]
    
    @IBOutlet weak var allButton : UIButton!
    @IBOutlet weak var customOneCollectionView : UICollectionView!
    @IBOutlet weak var recommendedLabel : UILabel!
    
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
        allButton.setTitle(isAllButtonSelected ? "All <" : "All >", for: .normal)
    }
}

//MARK: - Collection View Setup
extension CustomOneTableViewCell : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return nameLabelTitles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomOneCollectionViewCell", for: indexPath) as! CustomOneCollectionViewCell
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
        allButton.titleLabel?.textColor = .gray
        allButton.setTitle("All >", for: .normal)
        allButton.tintColor = .lightGray
        allButton.isUserInteractionEnabled = true
    }
    // Configure collection view properties
    func setupCollectionView() {
        self.customOneCollectionView.delegate = self
        self.customOneCollectionView.dataSource = self
        self.customOneCollectionView.register(UINib(nibName: "CustomOneCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CustomOneCollectionViewCell")
        customOneCollectionView.showsHorizontalScrollIndicator = false
        customOneCollectionView.isPagingEnabled = false
        layout.minimumLineSpacing = 10
        layout.scrollDirection = .horizontal
    }
    // Label Setup & Constraints
    func labelSetup() {
        recommendedLabel.textColor = UIColor.black
        recommendedLabel.textAlignment = .left
        recommendedLabel.numberOfLines = 1
        recommendedLabel.font = .boldSystemFont(ofSize: 18)
    }
}
