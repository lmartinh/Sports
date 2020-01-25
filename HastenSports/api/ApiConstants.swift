//
//  ApiConstants.swift
//  HastenSports
//
//  Created by Leticia Martín on 25/01/2020.
//  Copyright © 2020 Leticia Martín. All rights reserved.
//

import Foundation

struct ApiConstants {
    
    static let baseUrl : String = "https://api.myjson.com"
    
    static let SPORTS         = "/bins/66851"
    
    //The header fields
    enum HttpHeaderField: String {
        case contentType = "Content-Type"
        case acceptType = "Accept"
    }
    
    //The content type (JSON)
    enum ContentType: String {
        case json = "application/json"
    }

}
