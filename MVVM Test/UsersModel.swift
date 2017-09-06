//
//  UsersModel.swift
//  MVVM Test
//
//  Created by Ahmad Shubita on 8/29/17.
//  Copyright © 2017 universe. All rights reserved.
//

import Foundation
import ObjectMapper

class UsersModel: Mappable{
    
    var gender: String?
    var email: String?
    var phone: String?
    var cell: String?
    var name: Name?
    var location: Location?
    var login: Login?
    var picture: Picture?
    
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        
        gender <- map["gender"]
        email <- map["email"]
        phone <- map["phone"]
        cell <- map["cell"]
        name <- map["name"]
        location <- map["location"]
        login <- map["login"]
        picture <- map["picture"]


        
        
        
    }

}
