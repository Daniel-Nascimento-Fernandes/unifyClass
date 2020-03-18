//
//  MoreCoordinator.swift
//  FasenraPOC
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
    private let logoutHandler: LogoutHandler

    //MARK: Class life cycle
    init(logoutHandler: LogoutHandler) {
        self.logoutHandler = logoutHandler
        navigationController = UINavigationController()
        let moreViewController = MoreViewController()
        navigationController.viewControllers = [moreViewController]
    }    
}
