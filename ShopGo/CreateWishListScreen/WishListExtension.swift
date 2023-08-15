//
//  WishListExtension.swift
//  ShopGo
//
//  Created by Abdul wali Latif on 8/7/23.
//

import UIKit

extension WishListViewController: UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return wishListLabelArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WishListCollectionViewCell", for: indexPath) as! WishListCollectionViewCell
        cell.cellLabel.text = wishListLabelArray[indexPath.row]
        cell.cellImage.image = wishListImageArray[indexPath.row]
        let nameIndex = indexPath.row % wishListMoneyArray.count
        cell.moneyLabel.text = wishListMoneyArray[nameIndex]
        cell.cellImage.layer.cornerRadius = 15
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bounds = collectionView.bounds
        return CGSize(width: bounds.width/2 - 40, height: 230)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 25, bottom: 0, right: 25)
    }
    
    func setUpWishListButton(){
        numberOfItemLabel.text = "\(wishListLabelArray.count) items"
        ellipsisButtonOutlet.transform = CGAffineTransform(rotationAngle: CGFloat.pi/2)
    }
}
