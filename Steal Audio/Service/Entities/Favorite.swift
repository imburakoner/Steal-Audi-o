//
//  Favorites.swift
//  Steal Audio
//
//  Created by Burak Oner on 28.04.2018.
//  Copyright © 2018 Burak Oner. All rights reserved.
//

import Foundation
import ObjectMapper

public class Favorite : NSObject,Mappable,Encodable  {
    public var songID : String?
    
    override init() {    }
    
    public required init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        songID <- map["audioID"]
    }
    
    enum CodingKeys : String ,CodingKey {
        case songID
    }
    
    
    public func encode(to encoder : Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        if let id = self.songID {
            try container.encode(id, forKey: .songID)
        }
    }
    
}
