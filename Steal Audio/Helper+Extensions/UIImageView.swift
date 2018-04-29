//
//  UIImageView.swift
//  Steal Audio
//
//  Created by Burak Oner on 29.04.2018.
//  Copyright © 2018 Burak Oner. All rights reserved.
//

import UIKit
import Kingfisher

extension UIImageView {
    func loadImage(url : String) {
        guard let _url = URL(string: url) else { return}
        self.kf.setImage(with: _url, placeholder: #imageLiteral(resourceName: "Rectangle"), options: [.transition(ImageTransition.fade(1))], progressBlock: { (size, totalSize) in
            
        }) { (image, error, cacheType, url) in
            
        }
    }
}
