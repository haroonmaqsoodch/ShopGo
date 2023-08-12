//
//  MainCarouselTableViewCell.swift
//  ShopGo
//
//  Created by Quratulain on 8/9/23.
//

import UIKit

class MainCarouselTableViewCell: UITableViewCell {
    
    let imageNames = ["Bag5", "Bag4", "Bag3", "Bag2", "Bag1"]
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
    
    @IBOutlet weak var mainCarouselCollectionView : UICollectionView!
    
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
        mainCarouselCollectionView.scrollToItem(at: IndexPath(item: currentCellIndex, section: 0), at: .right, animated: true)
    }
}

//MARK: - Collection View Setup
extension MainCarouselTableViewCell : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func commonInit() {
        timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(slideToNext), userInfo: nil, repeats: true)
        setupCollectionView()
        setupPageControl()
    }
    // Configure collection view properties
    func setupCollectionView() {
        self.mainCarouselCollectionView.delegate = self
        self.mainCarouselCollectionView.dataSource = self
        self.mainCarouselCollectionView.register(UINib(nibName: "MainCarouselCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "MainCarouselCollectionViewCell")
        mainCarouselCollectionView.showsHorizontalScrollIndicator = false
    }
    // Configure page control properties
    func setupPageControl() {
        self.addSubview(pageControl)
        self.pageControl.sizeToFit()
        self.pageControl.numberOfPages = carouselImages.count
        pageControl.subviews.forEach {
            $0.transform = CGAffineTransform(scaleX: 2, y: 2)
        }
        NSLayoutConstraint.activate([pageControl.bottomAnchor.constraint(equalTo: mainCarouselCollectionView.bottomAnchor,constant: -20), pageControl.centerXAnchor.constraint(equalTo: mainCarouselCollectionView.centerXAnchor), pageControl.heightAnchor.constraint(equalToConstant: 60), pageControl.widthAnchor.constraint(equalToConstant: 150)])
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainCarouselCollectionViewCell", for: indexPath) as! MainCarouselCollectionViewCell
        cell.imageViewOutlet.image = carouselImages[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let frameSize = collectionView.frame.size
        return CGSize(width: frameSize.width, height: frameSize.height - 50)
    }
}
