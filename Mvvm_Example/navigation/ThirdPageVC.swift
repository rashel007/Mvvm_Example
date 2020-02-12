//
//  ThirdPageVC.swift
//  Mvvm_Example
//
//  Created by Estique on 2/12/20.
//  Copyright © 2020 Estique. All rights reserved.
//

import UIKit

class ThirdPageVC: ViewController {
    
    @IBAction func btnGoToRoot(_ sender: Any) {
         navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func btnback(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    @IBAction func btnBackToFirstView(_ sender: Any) {
        for controller in self.navigationController!.viewControllers as Array {
            if controller.isKind(of: FirstPageVC.self) {
                self.navigationController!.popToViewController(controller, animated: true)
                break
            }
        }
    }
    
    override func viewDidLoad() {
        
    }
}
