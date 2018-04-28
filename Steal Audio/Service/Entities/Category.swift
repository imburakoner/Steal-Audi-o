//
//  Category.swift
//  Steal Audio
//
//  Created by Burak Oner on 28.04.2018.
//  Copyright © 2018 Burak Oner. All rights reserved.
//

import Foundation


class Category : NSObject , Encodable , Decodable {
    var id : String?
    var name : String?
    var image : String?
}
