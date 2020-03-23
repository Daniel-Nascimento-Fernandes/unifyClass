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
    var initialViewController: UIViewController { return navigationController }
    
    var delegate: LoginCoordinatorDelegate?

    private let navigationController: UINavigationController

    // MARK: Class life cycle
    init() {
        navigationController = UINavigationController()
        let welcomeViewController = WelcomeViewController()
        welcomeViewController.delegate = self
        navigationController.viewControllers = [welcomeViewController]
    }
    
    // MARK: private functions
    private func showLogin() {
        let loginViewController = LoginViewController()
        loginViewController.delegate = self
        navigationController.pushViewController(loginViewController, animated: true)
    }
}

extension LoginCoordinator: WelcomeViewControllerDelegate {
    func welcomeViewControllerDidSelectLogin(_ controller: WelcomeViewController) {
        showLogin()
    }
}

extension LoginCoordinator: LoginViewControllerDelegate {
    func loginViewControllerDidSelectLogin(_ controller: LoginViewController) {
        delegate?.loginCoordinatorDidLoginSuccessfully(self)
    }
}
