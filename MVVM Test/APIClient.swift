//
//  APIClient.swift
//  MVVM Test
//
//  Created by Ahmad Shubita on 8/29/17.
//  Copyright © 2017 universe. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper


// this API Clicent will be called by the viewModel to get our top 10 users from API.
class APIClient: NSObject {
    
    var _usersList = [UsersModel] ()
    
    var usersList: [UsersModel] {
        return _usersList
    }
    
    // to download users data Json from the API
    func downloadUser(complete: @escaping DownloadComplete) {
        
        Alamofire.request(RANDOM_USER_URL).responseObject{ (response: DataResponse<UserResponse>) in
         
            let list = response.result.value
            
            if let usersModel = list?.userModelList {
                
                for(_ , user) in usersModel.enumerated() {
                    
                    self._usersList.append(user)
                }
            }
            complete()
        }
    }
    
}
