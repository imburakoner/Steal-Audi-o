//
//  FavoritesRouter.swift
//  Steal Audio
//
//  Created by Burak Oner on 29.04.2018.
//  Copyright © 2018 Burak Oner. All rights reserved.
//

import Foundation


protocol FavoriteRouter {
    
}

class FavoriteRouterImplementation : FavoriteRouter {
    fileprivate weak var view : FavoritesVC?
    
    init(view : FavoritesVC) {
        self.view = view
    }
}
