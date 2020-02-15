//
//  Utils.swift
//  Mvvm_Example
//
//  Created by Estique on 2/15/20.
//  Copyright © 2020 Estique. All rights reserved.
//

import UIKit


fileprivate var activityLoadingView: UIView?


extension UIViewController {
    
    
    func showLoadingSpinner() {
        
        if activityLoadingView != nil {
            return
        }
        
        activityLoadingView = UIView(frame: self.view.bounds)
        
        activityLoadingView?.backgroundColor = UIColor(displayP3Red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
        
        let ai = UIActivityIndicatorView(style: .large)
        ai.center = activityLoadingView!.center
        ai.startAnimating()
        activityLoadingView?.addSubview(ai)
        self.view.addSubview(activityLoadingView!)
    }
    
    func hideLoadingSpinner() {
        
        if activityLoadingView == nil {
            return
        }
        
        activityLoadingView?.removeFromSuperview()
        activityLoadingView = nil
    }
}
