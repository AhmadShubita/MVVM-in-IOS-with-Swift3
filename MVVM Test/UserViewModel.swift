//
//  UserViewModel.swift
//  MVVM Test
//
//  Created by Ahmad Shubita on 8/30/17.
//  Copyright © 2017 universe. All rights reserved.
//

import UIKit

//setup UserViewModel that inherites from NSObject
class UserViewModel: NSObject {
    //Create apiClient property that we can use to call in our API Call.
    //This apiClient property is marked as an @IBOutlet so that we can instantiate it from the storyboard.  I mark this with a bang operator (!) since I know it will not be nil since the storyboard will be injecting it.
    @IBOutlet weak var apiClient: APIClient!
    var usersList = [UsersModel]()
    func getUsers(comlete: @escaping DownloadComplete) {
        
        self.apiClient.downloadUser {
            self.usersList = self.apiClient._usersList
            comlete()
        }
        
    }
    
    func numberOfItemsToDisplay(in section: Int) -> Int {
        return usersList.count
    }
    
    
}
