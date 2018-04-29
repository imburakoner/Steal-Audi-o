//
//  CategoryRequest.swift
//  Steal Audio
//
//  Created by Burak Oner on 29.04.2018.
//  Copyright © 2018 Burak Oner. All rights reserved.
//

import Foundation

class CategoryRequest : ApiRequest {
    
    var _urlRequest: URLRequest
    init(){
        let url = URL(string: "\(Envirenmont.baseURL)5ae478dfc83f6d4cc734249e")!
        var request = URLRequest(url: url)
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "GET"
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
