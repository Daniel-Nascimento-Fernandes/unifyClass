//
//  UserLocal.swift
//  Fasenra
//
//  Created by Tarek Abdala on 26/03/2020.
//  Copyright © 2020 Tarek Abdala. All rights reserved.
//

import Foundation

struct InjectionObservationLocal {
    
    enum userType: String {
        case guest = "guest"
        case admin = "admin"
    }
    
    var id: String?
    var token: String
    var loginDate: Date
    var userType: userType?
    
}
