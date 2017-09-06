//
//  NameModel.swift
//  MVVM Test
//
//  Created by Ahmad Shubita on 8/29/17.
//  Copyright © 2017 universe. All rights reserved.
//

import Foundation
import ObjectMapper

class Name: Mappable {
    
    var title: String?
    var first: String?
    var last: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        title <- map["title"]
        first <- map["first"]
        last <- map["last"]
    }

    func getFullName()-> String {
        
        return title! + ": " + first! + " " + last!
    }
}
