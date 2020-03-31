//
//  LocalDB.swift
//  trainingProject
//
//  Created by Tarek Abdala on 26/03/2020.
//  Copyright © 2020 Tarek Abdala. All rights reserved.
//

import Foundation
import CoreData

class LocalDB {
    
    static let shared = LocalDB()
    
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "LocalDB")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    private init() {}
    
}
