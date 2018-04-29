//
//  SoundsRequest.swift
//  Steal Audio
//
//  Created by Burak Oner on 29.04.2018.
//  Copyright © 2018 Burak Oner. All rights reserved.
//

import Foundation


class SoundRequest : ApiRequest {
    var _urlRequest : URLRequest
    
    
    init() {
        let url = URL(string: "\(Envirenmont.baseURL)5ae4794d7a973f4ce577cc4a")!
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
