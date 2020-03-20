//
//  MoreCoordinator.swift
//  POC
//
//  Created by Tarek Abdala on 25/02/19.
//  Copyright © 2019 AstraZeneca. All rights reserved.
//

import UIKit

protocol MoreCoordinatorDelegate: AnyObject {
    func moreCoordinatorDidSelectLogout(_ coordinator: MoreCoordinator)
}

class MoreCoordinator {
    
    // MARK: Parameters
    var initialViewController: UIViewController { return navigationController }
    weak var delegate: MoreCoordinatorDelegate?

    private let navigationController: UINavigationController

    //MARK: Class life cycle
    init() {
        navigationController = UINavigationController()
       // navigationController.viewControllers = [moreViewController]
    }    
}
