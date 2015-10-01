//
//  FirstViewController.swift
//  tvTest
//
//  Created by Blake Merryman on 9/24/15.
//  Copyright © 2015 Griffin Technology. All rights reserved.
//

import UIKit

class FirstViewController: UICollectionViewController {

    let catDataSource = CatDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView?.dataSource = self.catDataSource
    }
    
}

