//
//  LibaryPresenter.swift
//  Steal Audio
//
//  Created by Burak Oner on 29.04.2018.
//  Copyright © 2018 Burak Oner. All rights reserved.
//

import Foundation


protocol  LibaryView  : class {
    func setup()
    func reload()
}

protocol LibaryInput {
    func viewDidLoad()
    func viewWillAppear()
}

protocol LibaryOutput {
    func numberOfRow()-> Int
    func cellDataFor(indexPath : IndexPath) -> CategoryCellModel
}


protocol LibaryPresenter {
    var input : LibaryInput { get }
    var output : LibaryOutput { get}
}



class LibaryPresenterImplemetation : LibaryPresenter , LibaryInput , LibaryOutput {
    
    class State  {
        var models = [CategoryCellModel]()
    }
    
    
    fileprivate weak var  view : LibaryView?
    fileprivate var router : LibaryRouter
    fileprivate var state = State()
    
    var input: LibaryInput {
        return self
    }
    
    var output: LibaryOutput {
    return self
    }
    
    init(view : LibaryView, router : LibaryRouter) {
        self.view = view
        self.router = router
    }
    
    
    func viewDidLoad() {
        
        Service.manager.getCategories(successHandler: {[weak self] (category) in
            guard let strongSelf = self else  { return }
            category.forEach({ (category) in
                let id = category.id ?? ""
                let name = category.name ?? ""
                var model = CategoryCellModel()
                model.id = id
                model.name = name
                strongSelf.state.models.append(model)
                
            })
            strongSelf.view?.setup()
            
        }) { (error) in
            
        }
    }
    
    func viewWillAppear() {
        
    }
    func numberOfRow() -> Int {
        return self.state.models.count
    }
    
    func cellDataFor(indexPath: IndexPath) -> CategoryCellModel{
        return self.state.models[indexPath.row]
    }
    
    
}


