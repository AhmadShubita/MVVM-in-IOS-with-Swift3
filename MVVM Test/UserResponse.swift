//
//  UserResult.swift
//  MVVM Test
//
//  Created by Ahmad Shubita on 8/29/17.
//  Copyright © 2017 universe. All rights reserved.
//

import Foundation
import ObjectMapper

class UserResponse: Mappable {
    
    var userModelList : [UsersModel]?
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        userModelList <- map ["results"]
    }
}
