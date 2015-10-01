//
//  CatDataSource.swift
//  NativeTV
//
//  Created by Blake Merryman on 9/29/15.
//  Copyright © 2015 Blake Merryman. All rights reserved.
//

import UIKit

class CatDataSource: NSObject {

    private(set) var catPictures = [UIImage]()
    
    override init() {
        super.init()
        for index in 1...11 {
            if let catPic = UIImage(named: "IMG_\(index)") {
                catPictures.append( catPic )
            }
        }
    }
    
    func catPictureAtIndex(index: Int) -> UIImage? {
        if index < 0 || index > catPictures.count {
            return nil
        } else {
            return catPictures[index]
        }
    }
    
}

extension CatDataSource: UICollectionViewDataSource {
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return catPictures.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCellWithReuseIdentifier("imageCell", forIndexPath: indexPath) as? ImageCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.imageView.image = catPictureAtIndex(indexPath.row)
        return cell
    }
}