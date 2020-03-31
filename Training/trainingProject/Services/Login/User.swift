//
//  User.swift
//  trainingProject
//
//  Created by Tarek Abdala on 26/03/2020.
//  Copyright © 2020 Tarek Abdala. All rights reserved.
//

import Foundation

struct User {
    
    enum userType {
        case guest
        case admin
    }
    
    var id: String?
    var token: String
    var loginDate: Date
    var userType: userType?
    
    init(id: String?, token: String, loginDate: Date, userType: userType?) {
        self.id = id
        self.token = token
        self.loginDate = loginDate
        self.userType = userType
    }
    
}
