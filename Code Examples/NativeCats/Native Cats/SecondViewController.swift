//
//  SecondViewController.swift
//  tvTest
//
//  Created by Blake Merryman on 9/24/15.
//  Copyright © 2015 Griffin Technology. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageView.image = UIImage(named: "IMG_0")
        self.captionLabel.text = "Seriously..."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var captionLabel: UILabel!

}

