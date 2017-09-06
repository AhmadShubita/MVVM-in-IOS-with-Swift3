//
//  Picture.swift
//  MVVM Test
//
//  Created by me on 8/29/17.
//  Copyright © 2017 universe. All rights reserved.
//

import Foundation
import ObjectMapper

class Picture: Mappable {
    
    var large: String?
    var medium: String?
    var thumbnail: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        large <- map["tilargetle"]
        medium <- map["medium"]
        thumbnail <- map["thumbnail"]
    }
    
}
