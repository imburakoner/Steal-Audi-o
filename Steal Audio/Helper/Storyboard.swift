//
//  Storyboard.swift
//  Steal Audio
//
//  Created by Burak Oner on 28.04.2018.
//  Copyright © 2018 Burak Oner. All rights reserved.
//

import Foundation
import  UIKit

public func instaniate<T : UIViewController>(_ viewController : String) -> T {
    let storyBoard = UIStoryboard(name: "Main", bundle: nil)
    guard let vc =  storyBoard.instantiateViewController(withIdentifier: viewController) as? T else  {
        fatalError()
    }
    return vc
}
