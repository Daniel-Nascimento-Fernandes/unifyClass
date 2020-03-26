//
//  LoginService.swift
//  trainingProject
//
//  Created by Tarek Abdala on 26/03/2020.
//  Copyright © 2020 Tarek Abdala. All rights reserved.
//

import Foundation

protocol LoginService {
    
    var userName: String { get }
    var password: String { get }

    func signIn(injection: Injection) throws
    func signOut() throws
}
