//
//  Location.swift
//  MVVM Test
//
//  Created by Ahmad Shubita on 8/29/17.
//  Copyright © 2017 universe. All rights reserved.
//

import Foundation
import ObjectMapper

class Location: Mappable {
    
    var street: String?
    var city: String?
    var state: String?
    var postcode: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
    
        street <- map["street"]
        city <- map["city"]
        state <- map["state"]
        postcode <- map["postcode"]

    }
    
}
