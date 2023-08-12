//
//  CustomCarouselTableViewCell.swift
//  ShopGo
//
//  Created by Quratulain on 8/10/23.
//

import UIKit

class CustomCarouselTableViewCell: UITableViewCell {
    
    let imageNames = ["Discount1", "Discount2", "Discount3", "Discount4", "Discount5"]
    lazy var carouselImages: [UIImage] = {
        return self.imageNames.compactMap { UIImage(named: $0) }
    }()
    var currentCellIndex = 0
    var timer : Timer?
    var pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.pageIndicatorTintColor = UIColor(named: "PagetintColor")
        pageControl.currentPageIndicatorTintColor = UIColor(named: "ButtonColor")
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        return pageControl
    }()
    
    @IBOutlet weak var customCarouselCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        commonInit()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    @objc func slideToNext() {
        if currentCellIndex < carouselImages.count-1 {
            currentCellIndex = currentCellIndex + 1
        }
        else {
            currentCellIndex = 0
        }
        pageControl.currentPage = currentCellIndex
        customCarouselCollectionView.scrollToItem(at: IndexPath(item: currentCellIndex, section: 0), at: .right, animated: true)
    }
}

//MARK: - Collection View Setup
extension CustomCarouselTableViewCell : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func commonInit() {
        timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(slideToNext), userInfo: nil, repeats: true)
        setupCollectionView()
        setupPageControl()
    }
    // Configure collection view properties
    func setupCollectionView() {
        self.customCarouselCollectionView.delegate = self
        self.customCarouselCollectionView.dataSource = self
        self.customCarouselCollectionView.register(UINib(nibName: "CustomCarouselCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CustomCarouselCollectionViewCell")
        customCarouselCollectionView.showsHorizontalScrollIndicator = false
    }
    // Configure page control properties
    func setupPageControl() {
        self.addSubview(pageControl)
        self.pageControl.sizeToFit()
        self.pageControl.numberOfPages = carouselImages.count
        pageControl.subviews.forEach {
            $0.transform = CGAffineTransform(scaleX: 2, y: 2)
        }
        NSLayoutConstraint.activate([pageControl.bottomAnchor.constraint(equalTo: customCarouselCollectionView.bottomAnchor,constant: -20), pageControl.centerXAnchor.constraint(equalTo: customCarouselCollectionView.centerXAnchor), pageControl.heightAnchor.constraint(equalToConstant: 60), pageControl.widthAnchor.constraint(equalToConstant: 150)])
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCarouselCollectionViewCell", for: indexPath) as! CustomCarouselCollectionViewCell
        cell.imageViewOutlet.image = carouselImages[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let frameSize = collectionView.frame.size
        return CGSize(width: frameSize.width, height: frameSize.height - 50)
    }
}
