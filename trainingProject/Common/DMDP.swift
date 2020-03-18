//
//  DMDP.swift
//  trainingProject
//
//  Created by Tarek Abdala on 18/03/2020.
//  Copyright © 2020 Tarek Abdala. All rights reserved.
//

import Foundation


struct DMDP {
    @available(*, unavailable) private init() {}

    static func getCurrentUserInfo(userId: String, appId: String) -> UserInfo {
        return UserInfo(userId: "", appId: "")
    }
}


public class UserInfo: Codable {
    
    public let userId: String
    public let appId: String
    
    public init(userId: String, appId: String) {
        self.userId = userId
        self.appId = appId
    }
    
    public func hasValidLogin() -> Bool {
        return !self.userId.isEmpty && !self.appId.isEmpty
    }
}


public class LogoutHandler {
    static func logout() {
    }
}
