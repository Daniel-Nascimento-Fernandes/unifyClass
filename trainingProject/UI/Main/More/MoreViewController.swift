//
//  MoreViewController.swift
//  POC
//
//  Created by Tarek Abdala on 25/02/19.
//  Copyright © 2019 AstraZeneca. All rights reserved.
//

import UIKit

protocol MoreViewControllerDelegate: AnyObject {
    func moreViewControllerDidSelectShowMyAccount(_ controller: MoreViewController)
}

class MoreViewController: UIViewController {
    
    // MARK: Parameters
    weak var delegate: MoreViewControllerDelegate?

    init() {
        super.init(nibName: "MoreViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
}
