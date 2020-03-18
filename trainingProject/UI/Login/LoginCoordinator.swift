//
//  LoginCoordinator.swift
//  testttt
//
//  Created by Tarek Abdala on 17/03/2020.
//

import UIKit

protocol LoginCoordinatorDelegate: AnyObject {
    func loginCoordinatorDidLoginSuccessfully(_ coordinator: LoginCoordinator)
}

class LoginCoordinator {
    
    // MARK: Parameters
    var initialViewController: UIViewController { return containerViewController }
    weak var delegate: LoginCoordinatorDelegate?
    private var containerViewController: SimpleContainerViewController
    
    // MARK: Class life cycle
    init() {
        self.containerViewController = SimpleContainerViewController()
    }
    
    // MARK: private functions
    private func showWelcome() {
        let welcomeViewController = WelcomeViewController()
        welcomeViewController.delegate = self
        self.containerViewController.childViewController = welcomeViewController
    }
    
}

extension LoginCoordinator: WelcomeViewControllerDelegate {
    
    func welcomeViewControllerDidSelectContinue(_ controller: WelcomeViewController) {
        showWelcome()
    }
    
}
