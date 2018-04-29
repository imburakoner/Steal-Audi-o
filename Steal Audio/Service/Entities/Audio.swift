//
//  Audio.swift
//  Steal Audio
//
//  Created by Burak Oner on 28.04.2018.
//  Copyright © 2018 Burak Oner. All rights reserved.
//

import Foundation
import ObjectMapper


public class Audio : Mappable  {
    public var id : String?
    public var name : String?
    public var categoryID : String?
    public var soundUrl : String?
    
    public required init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        categoryID <- map["categoryID"]
        soundUrl <- map["soundUrl"]
    }
    
    
}
