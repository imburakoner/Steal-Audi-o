//
//  LibaryRouter.swift
//  Steal Audio
//
//  Created by Burak Oner on 29.04.2018.
//  Copyright © 2018 Burak Oner. All rights reserved.
//

import Foundation


protocol LibaryRouter : class {
    
}

class LibaryRouterImplementation : LibaryRouter {
    fileprivate weak var view : LibaryVC?
    
    init(view : LibaryVC) {
        self.view = view
    }
    
}
