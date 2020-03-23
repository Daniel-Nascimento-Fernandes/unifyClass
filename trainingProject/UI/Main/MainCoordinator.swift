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
        let moreViewController = MoreViewController()
        moreViewController.delegate = self
        navigationController.viewControllers = [moreViewController]
    }
    
}

extension MainCoordinator: MoreViewControllerDelegate {
    func moreViewControllerDidSelectShowMyAccount(_ controller: MoreViewController) {
        
    }
}
