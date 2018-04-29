//
//  FavoriteRequest.swift
//  Steal Audio
//
//  Created by Burak Oner on 29.04.2018.
//  Copyright © 2018 Burak Oner. All rights reserved.
//

import Foundation


enum FavoriteMethod : String{
    case GET = ""
    case PUT = "/latest"
}

class FavoriteRequest : ApiRequest {
    var _urlRequest : URLRequest
    
    init() {
        var url = URL(string: "\(Envirenmont.baseURL)5ae47978c83f6d4cc73424a8/latest")!
        var request = URLRequest(url: url)
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "GET"
        self._urlRequest = request
    }
    
    init(favorites : [Favorite]) {
        var url = URL(string: "\(Envirenmont.baseURL)5ae47978c83f6d4cc73424a8")!
        var request = URLRequest(url: url)
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "PUT"
        
        let encoder = JSONEncoder()

        do {
            let data = try encoder.encode(favorites)
            let payload = data
            request.httpBody = payload
            
        }catch{
            
            print(error)
        }
        
        
        
        self._urlRequest = request
    }
    
    
    var urlRequest: URLRequest {
        get {
            return self._urlRequest
        }
        set {
            self._urlRequest = newValue
        }
    }
}
