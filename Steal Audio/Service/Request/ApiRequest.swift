//
//  ApiRequest.swift
//  Steal Audio
//
//  Created by Burak Oner on 29.04.2018.
//  Copyright © 2018 Burak Oner. All rights reserved.
//

import Foundation


public protocol ApiRequest {
    var urlRequest : URLRequest { get set}
}
