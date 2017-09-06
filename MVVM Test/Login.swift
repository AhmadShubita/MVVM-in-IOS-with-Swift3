//
//  Login.swift
//  MVVM Test
//
//  Created by Ahmad Shubita on 8/29/17.
//  Copyright © 2017 universe. All rights reserved.
//

import Foundation
import ObjectMapper

class Login: Mappable {
    
    var userName: String?
    var password: String?

    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        
        userName <- map["username"]
        password <- map["password"]
       
    }

    
}
