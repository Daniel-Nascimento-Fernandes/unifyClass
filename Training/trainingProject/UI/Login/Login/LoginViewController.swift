//
//  LoginViewController.swift
//

import UIKit

protocol LoginViewControllerDelegate: AnyObject {
    func loginViewControllerDidSelectLogin(_ controller: LoginViewController)
}

class LoginViewController: UIViewController {
    
    // MARK: Parameters
    var delegate: LoginViewControllerDelegate?

    init() {
        super.init(nibName: "LoginViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func didSelectLoginButton(_ sender: Any) {
        delegate?.loginViewControllerDidSelectLogin(self)
    }
    
}
