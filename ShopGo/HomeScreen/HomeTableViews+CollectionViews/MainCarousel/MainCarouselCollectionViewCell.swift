//
//  MainCarouselCollectionViewCell.swift
//  ShopGo
//
//  Created by Quratulain on 8/9/23.
//

import UIKit

class MainCarouselCollectionViewCell: UICollectionViewCell {
    
    var isHeartButtonSelected = false
    
    @IBOutlet weak var imageViewOutlet: UIImageView!
    @IBOutlet weak var heartButtonOutlet: UIButton!
    @IBOutlet weak var trendingLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageSetup()
        labelSetup()
        heartButtonSetup()
    }
    
    @IBAction func heartButtonTap(_ sender: Any) {
        isHeartButtonSelected.toggle()
        let heartImage = isHeartButtonSelected ? UIImage(systemName: "heart.fill") : UIImage(systemName: "heart")
        heartButtonOutlet.setImage(heartImage, for: .normal)
    }
}
//MARK: - CollectionView UI Setup
extension MainCarouselCollectionViewCell {
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
        heartButtonOutlet.tintColor = UIColor(named: "ButtonColor")
        heartButtonOutlet.contentVerticalAlignment = .fill
        heartButtonOutlet.contentHorizontalAlignment = .fill
        heartButtonOutlet.translatesAutoresizingMaskIntoConstraints = false
    }
    // Trending Label Setup
    func labelSetup() {
        trendingLabel.text = "Trending Products"
        trendingLabel.textColor = UIColor(named: "ButtonColor")
        trendingLabel.textAlignment = .center
        trendingLabel.numberOfLines = 3
        trendingLabel.font = .boldSystemFont(ofSize: 20)
        trendingLabel.translatesAutoresizingMaskIntoConstraints = false
    }
}
