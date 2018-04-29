//
//  FavoriteResponse.swift
//  Steal Audio
//
//  Created by Burak Oner on 29.04.2018.
//  Copyright © 2018 Burak Oner. All rights reserved.
//

import Foundation
import ObjectMapper

public class FavoriteResponse : Mappable {
    
    public var success : Bool?
    public var data : Array<Favorite>?
    public var version : Int?
    public var parentID : String?
    
    public required init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        success <- map["success"]
        data <- map["data"]
        version <- map["version"]
        parentID <- map["parentId"]
    }
}

