//
//  ViewController.swift
//  trainingProject
//
//  Created by Tarek Abdala on 18/03/2020.
//  Copyright © 2020 Tarek Abdala. All rights reserved.
//

import UIKit

class AppCoordinator {
    
    // MARK: Parameters
    var initialViewController: UIViewController { return containerViewController }
    private var containerViewController: SimpleContainerViewController
    private var currentChildCoordinator: Any?

    // MARK: Class life cycle
    init(currentUserInfoProvider: UserInfo) {
        self.containerViewController = SimpleContainerViewController()
        if currentUserInfoProvider.hasValidLogin() {
            self.showLogin()
        } else {
            self.showMain()
        }
    }

    // MARK: private functions
    private func showLogin() {
        let loginCoordinator = LoginCoordinator()
        loginCoordinator.delegate = self
        currentChildCoordinator = loginCoordinator
        containerViewController.childViewController = loginCoordinator.initialViewController
    }
    
    private func showMain() {
        let mainCoordinator = MainCoordinator()
        mainCoordinator.delegate = self
        currentChildCoordinator = mainCoordinator
        containerViewController.childViewController = mainCoordinator.initialViewController
    }
    
}

extension AppCoordinator: LoginCoordinatorDelegate {
    func loginCoordinatorDidLoginSuccessfully(_ coordinator: LoginCoordinator) {
        showMain()
    }
}

extension AppCoordinator: MainCoordinatorDelegate {
    func mainCoordinatorDidSelectLogout(_ coordinator: MainCoordinator) {
        showLogin()
    }
}
