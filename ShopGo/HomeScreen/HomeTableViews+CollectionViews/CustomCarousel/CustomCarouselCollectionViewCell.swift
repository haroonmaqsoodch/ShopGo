//
//  CustomCarouselCollectionViewCell.swift
//  ShopGo
//
//  Created by Quratulain on 8/10/23.
//

import UIKit

class CustomCarouselCollectionViewCell: UICollectionViewCell {
    
    var isHeartButtonSelected = false
    
    @IBOutlet weak var trendingLabel: UILabel!
    @IBOutlet weak var heartButtonOutlet: UIButton!
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageSetup()
        heartButtonSetup()
        labelSetup()
    }
    
    @IBAction func heartButtonTap(_ sender: Any) {
        isHeartButtonSelected.toggle()
        let heartImage = isHeartButtonSelected ? UIImage(systemName: "heart.fill") : UIImage(systemName: "heart")
        heartButtonOutlet.setImage(heartImage, for: .normal)
    }
}
//MARK: - CollectionView UI Setup
extension CustomCarouselCollectionViewCell {
    // Image Setup
    func imageSetup() {
        imageViewOutlet.contentMode = .scaleAspectFill
        imageViewOutlet.translatesAutoresizingMaskIntoConstraints = false
        imageViewOutlet.clipsToBounds = true
        imageViewOutlet.layer.cornerRadius = 10
    }
    // Heart Button Setup
    func heartButtonSetup() {
        heartButtonOutlet.setImage(UIImage(systemName: "heart"), for: .normal)
        heartButtonOutlet.setImage(UIImage(systemName: "heart.fill"), for: .selected)
        heartButtonOutlet.tintColor = UIColor(named: "ButtonColor")
        heartButtonOutlet.contentVerticalAlignment = .fill
        heartButtonOutlet.contentHorizontalAlignment = .fill
    }
    // Trending Label Setup
    func labelSetup() {
        trendingLabel.text = "20% Discount on your 1st order"
        trendingLabel.textColor = UIColor.white
        trendingLabel.textAlignment = .center
        trendingLabel.numberOfLines = 3
        trendingLabel.font = .boldSystemFont(ofSize: 20)
    }
}
