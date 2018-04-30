//
//  FavoritesPresenter.swift
//  Steal Audio
//
//  Created by Burak Oner on 29.04.2018.
//  Copyright © 2018 Burak Oner. All rights reserved.
//

import Foundation



protocol FavoriteView : class {
    func setup()
    func reload()
}

protocol FavoriteInput  {
    func viewDidLoad()
    func viewWillAppear()
    func disLike(row : Int)
}


protocol FavoriteOutput {
    func numberOfItem() -> Int
    func cellDataFor(indexPath : IndexPath)
}

protocol FavoritePresenter {
    var input : FavoriteInput { get }
    var output : FavoriteOutput { get }
}


class FavoritePResenterImplementation : FavoritePresenter , FavoriteInput , FavoriteOutput {
 
    
    
    
    var input: FavoriteInput {
        return self
    }
    var output: FavoriteOutput {
        return self
    }
    
    
    class State {
        var models = [AudioItemModel]()
        
    }
    
    fileprivate weak var view : FavoriteView?
    fileprivate var router : FavoriteRouter
    fileprivate var items : [AudioItemModel]
    
    init(view : FavoriteView , router : FavoriteRouter, items : [AudioItemModel]) {
        self.view = view
        self.router = router
        self.items = items
    }
    
    func viewDidLoad() {
        Service.manager.getFavorites(successHandler: { [weak self] (favorites) in
            guard let strongSelf = self else  { return }
            favorites.forEach({ (fav) in
                
            })
            strongSelf.view?.setup()
        }) { (error) in
            
        }
    }
    
    func viewWillAppear() {
        
    }
    
    func disLike(row: Int) {
        
    }
    
    func numberOfItem() -> Int {
        return 12
    }
    
    func cellDataFor(indexPath: IndexPath) {
        
    }
    
    
}
