//
//  WelcomeViewController.swift
//  testttt
//
//  Created by Tarek Abdala on 17/03/2020.
//

import UIKit

protocol WelcomeViewControllerDelegate: AnyObject {
    func welcomeViewControllerDidSelectLogin(_ controller: WelcomeViewController)
}

class WelcomeViewController: UIViewController {
    
    // MARK: Parameters
    var delegate: WelcomeViewControllerDelegate?
    private let viewModel: WelcomeViewModel
    
    override func viewDidLoad() {
        
    }
    
    // MARK: Class life cycle
    init(viewModel: WelcomeViewModel = DefaultWelcomeViewModel()) {
        self.viewModel = viewModel
        super.init(nibName: "WelcomeViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: IBAction
    @IBAction func didSelectLogin(_ sender: UIButton) {
        self.delegate?.welcomeViewControllerDidSelectLogin(self)
    }
}
