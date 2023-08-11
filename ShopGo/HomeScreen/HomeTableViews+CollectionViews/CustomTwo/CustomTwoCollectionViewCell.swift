//
//  CustomTwoCollectionViewCell.swift
//  ShopGo
//
//  Created by Quratulain on 8/10/23.
//

import UIKit

class CustomTwoCollectionViewCell: UICollectionViewCell {
    
    var isHeartButtonSelected = false
    
    @IBOutlet weak var imageViewOutlet: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var heartButtonOutlet: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageSetup()
        heartButtonSetup()
        nameLabelSetup()
    }
    
    @IBAction func heartButtonTap(_ sender: Any) {
        isHeartButtonSelected.toggle()
        let heartImage = isHeartButtonSelected ? UIImage(systemName: "heart.fill") : UIImage(systemName: "heart")
        heartButtonOutlet.setImage(heartImage, for: .normal)
    }
}
//MARK: - Collectionview UI Setup
extension CustomTwoCollectionViewCell {
    // Image Setup
    func imageSetup() {
        imageViewOutlet.contentMode = .scaleAspectFill
        imageViewOutlet.clipsToBounds = true
        imageViewOutlet.layer.cornerRadius = 10
    }
    // Heartbutton Setup
    func heartButtonSetup() {
        heartButtonOutlet.setImage(UIImage(systemName: "heart"), for: .normal)
        heartButtonOutlet.tintColor = UIColor(named: "ButtonColor")
        heartButtonOutlet.contentVerticalAlignment = .fill
        heartButtonOutlet.contentHorizontalAlignment = .fill
    }
    // Namelabel Setup
    func nameLabelSetup() {
        nameLabel.textColor = UIColor.systemGray
        nameLabel.textAlignment = .center
        nameLabel.numberOfLines = 3
        nameLabel.font = .boldSystemFont(ofSize: 20)
    }
}
