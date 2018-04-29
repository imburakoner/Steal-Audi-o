//
//  Category.swift
//  Steal Audio
//
//  Created by Burak Oner on 28.04.2018.
//  Copyright © 2018 Burak Oner. All rights reserved.
//

import Foundation
import ObjectMapper

public class Category : NSObject , Mappable {
    public var id : String?
    public var name : String?
    public var image : String?
    
    public required init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        image <- map["image"]
    }
    
}
