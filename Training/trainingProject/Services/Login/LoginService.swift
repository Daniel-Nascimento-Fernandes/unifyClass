//
//  LoginService.swift
//  trainingProject
//
//  Created by Tarek Abdala on 26/03/2020.
//  Copyright © 2020 Tarek Abdala. All rights reserved.
//

import Foundation

protocol LoginService {
    func signIn(userName: String, password: String) throws -> User
    func signOut() throws
}
