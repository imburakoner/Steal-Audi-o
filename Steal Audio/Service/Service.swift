//
//  ServiceHandler.swift
//  Steal Audio
//
//  Created by Burak Oner on 28.04.2018.
//  Copyright © 2018 Burak Oner. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper
import ObjectMapper

public class Service {
    
    static let manager = Service()
    private init() {}
    
    public func sendRequest<T : Mappable>(request : ApiRequest, _ type : T.Type ,successHandler : @escaping(T) ->() , failHandler : @escaping(Error) -> ()) {
        Alamofire.request(request.urlRequest).responseObject { (response : DataResponse<T>) in
            switch response.result {
            case .success(let r):
                successHandler(r)
            case .failure(let error):
                failHandler(error)
            }
        }
    }
    
    public func sendRequestArray<T : Mappable> (request : ApiRequest , _ type: T.Type, successHandler : @escaping([T]) -> (), failHandler : @escaping (Error)->()) {
        Alamofire.request(request.urlRequest).responseArray { (response : DataResponse<[T]>) in
            switch response.result {
            case .success(let r):
                successHandler(r)
            case .failure(let error):
                failHandler(error)
            }
        }
    }
    
    public func getFavorites(successHandler : @escaping([Favorite]) -> (), failHandler : @escaping (Error)->()) {
        let request = FavoriteRequest()
        sendRequestArray(request: request, Favorite.self, successHandler: { (favorites) in
            successHandler(favorites)
        }) { (error) in
            failHandler(error)
        }
    }
    
    public func updateFavorites(favorites : [Favorite], successHandler : @escaping(FavoriteResponse)-> (), failHandler : @escaping (Error) -> ()) {
        let request = FavoriteRequest(favorites: favorites)
        sendRequest(request: request, FavoriteResponse.self, successHandler: { (response) in
            successHandler(response)
        }) { (errors) in
            failHandler(errors)
        }
    }
    
    public func getSounds(successHandler  : @escaping([Audio])-> (),failHandler : @escaping (Error) -> ()) {
        let request = SoundRequest()
        sendRequestArray(request: request, Audio.self, successHandler: { (sounds) in
            successHandler(sounds)

        }) { (error) in
            failHandler(error)
        }
    }
    
    public func getCategories(successHandler : @escaping([Category]) -> () , failHandler : @escaping (Error) -> ()) {
        let request = CategoryRequest()
        sendRequestArray(request: request, Category.self, successHandler: { (categories) in
            successHandler(categories)
        }) { (error) in
            failHandler(error)
        }
        
    }
}
