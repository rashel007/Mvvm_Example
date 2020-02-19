//
//  FirstPageVC.swift
//  Mvvm_Example
//
//  Created by Estique on 2/12/20.
//  Copyright © 2020 Estique. All rights reserved.
//

import UIKit


class FirstPageVC : ViewController {
    
    var details: String = ""
    
    @IBOutlet var testLabelFrist: UILabel!
    var observer = Notification.Name(secondvcObserver)
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    override func viewDidLoad() {
        print("Details is \(details)")
        
        makeObserver()
    }
    @IBAction func btnGoToMvvm2(_ sender: Any) {
//        let vc = SignInViewController()
//        self.navigationController?.pushViewController(vc, animated: true)
//
        
//        let storyboard = UIStoryboard(name: "Main", bundle: nil);
//        let vc = storyboard.instantiateViewController(withIdentifier: "SignInViewController")
//                   self.present(vc, animated: true, completion: nil);
        
        
        // performSegue(withIdentifier: "segue", sender: nil)
        
        let vc = storyboard!.instantiateViewController(withIdentifier: "SignInViewController") as! SignInViewController
        
        vc.mydemoDelegation = self
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func makeObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(FirstPageVC.updateView(notification:)), name: observer, object: nil)
    }
    
    @objc func updateView(notification: Notification) {
        print("Notification 2 \(notification.name.rawValue)")
        testLabelFrist.text = notification.name.rawValue
    }
}

extension FirstPageVC: MyDemoDelegate{
    func message(username: String, password: String) {
        print("FirstPageVC :  \(username) , \(password)")
    }
    
    
}

