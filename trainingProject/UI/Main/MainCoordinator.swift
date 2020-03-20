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
    var initialViewController: UIViewController { return UIViewController() }
    weak var delegate: MainCoordinatorDelegate?
    private let moreCoordinator = MoreCoordinator()

    // MARK: Class life cycle
    init() {
    }
}

extension MainCoordinator: MoreCoordinatorDelegate {
    func moreCoordinatorDidSelectLogout(_ coordinator: MoreCoordinator) {
        delegate?.mainCoordinatorDidSelectLogout(self)
    }    
}
