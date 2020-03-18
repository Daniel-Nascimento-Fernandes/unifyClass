//
//  SimpleContainerViewController.swift
//  testttt
//

import UIKit

/**
 A simple container VC that can hold and crossfade between child VCs.
 */
class SimpleContainerViewController: UIViewController {
    
    var childViewController: UIViewController? {
        didSet {
            if let from = oldValue, let to = childViewController {
                
                from.willMove(toParent: nil)
                addChild(to)
                
                to.view.frame = view.frame
                to.view.alpha = 0
                
                transition(from: from, to: to, duration: 0.3, options: [], animations: {
                    
                    to.view.alpha = 1
                    self.setNeedsStatusBarAppearanceUpdate()
                    
                }, completion: { finished in
                    
                    from.removeFromParent()
                    to.didMove(toParent: self)
                })
                
            } else if let childViewController = oldValue {
                
                childViewController.willMove(toParent: nil)
                childViewController.view.removeFromSuperview()
                childViewController.removeFromParent()
                
            } else if let childViewController = childViewController {
                
                addChild(childViewController)
                childViewController.view.frame = view.frame
                view.addSubview(childViewController.view)
                childViewController.didMove(toParent: self)
                
            }
        }
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return childViewController?.preferredStatusBarStyle ?? .default
    }
    
}
