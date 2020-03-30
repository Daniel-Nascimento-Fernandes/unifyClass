//
//  MainCoordinator.swift
//  
//

import UIKit

protocol MainCoordinatorDelegate: AnyObject {
    func mainCoordinatorDidSelectLogout(_ coordinator: MainCoordinator)
}

class MainCoordinator {
    
    // MARK: Parameters
    var initialViewController: UIViewController { return navigationController }
    weak var delegate: MainCoordinatorDelegate?

    private let navigationController: UINavigationController
    
    // MARK: Class life cycle
    init() {
        navigationController = UINavigationController()
        let dashboardViewController = DashboardViewController()
        dashboardViewController.delegate = self
        navigationController.viewControllers = [dashboardViewController]
    }
    
}

extension MainCoordinator: DashboardViewControllerDelegate {
    func DashboardViewControllerDidSelectShowMyAccount(_ controller: DashboardViewController) {
        
    }
}
