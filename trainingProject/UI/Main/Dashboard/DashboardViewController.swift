//
//  DashboardViewController.swift
//  POC
//
//  Created by Tarek Abdala on 25/02/19.
//  Copyright © 2019 AstraZeneca. All rights reserved.
//

import UIKit

protocol DashboardViewControllerDelegate: AnyObject {
    func DashboardViewControllerDidSelectShowMyAccount(_ controller: DashboardViewController)
}

class DashboardViewController: UIViewController {
    
    // MARK: Parameters
    weak var delegate: DashboardViewControllerDelegate?

    init() {
        super.init(nibName: "DashboardViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
}
