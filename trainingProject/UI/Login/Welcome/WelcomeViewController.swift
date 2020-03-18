//
//  WelcomeViewController.swift
//  testttt
//
//  Created by Tarek Abdala on 17/03/2020.
//

import UIKit

protocol WelcomeViewControllerDelegate: AnyObject {
    func welcomeViewControllerDidSelectContinue(_ controller: WelcomeViewController)
}

class WelcomeViewController: UIViewController {
    
    // MARK: Parameters
    weak var delegate: WelcomeViewControllerDelegate?
    
    // MARK: Class life cycle
    init() {
        super.init(nibName: "WelcomeViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
