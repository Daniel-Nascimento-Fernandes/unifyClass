//
//  LoginViewController.swift
//

import UIKit

protocol LoginViewControllerDelegate: AnyObject {
    func loginViewControllerDidSelectLogin(_ controller: LoginViewController)
}

class LoginViewController: UIViewController {
    
    // MARK: Parameters
    weak var delegate: LoginViewControllerDelegate?

    init() {
        super.init(nibName: "LoginViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
