//
//  SignInViewController.swift
//  Mvvm_Example
//
//  Created by Estique on 2/17/20.
//  Copyright © 2020 Estique. All rights reserved.
//

import UIKit

// protocol & delegation to pass data between views
// protocol & delegation used for one to one data communication
// this delegation will communicate data between FirstVC and this VC
protocol MyDemoDelegate{
    func message(username: String, password: String)
}

class SignInViewController: UIViewController {
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var btnSignIn: UIButton!
    
    private var viewModel: SIgnInViewModel!
    
     var mydemoDelegation: MyDemoDelegate!
    
    
    
    override func viewDidLoad() {
        self.viewModel = SIgnInViewModel(authentication: SessionService())
        self.viewModel.delegate = self
        self.setUpBindings()
        super.viewDidLoad()
    }
    
    
    private func setUpBindings() {
        self.username.addTarget(self, action: #selector(self.credentialsChanged), for: UIControl.Event.editingChanged)
        self.password.addTarget(self, action: #selector(self.credentialsChanged), for: UIControl.Event.editingChanged)
        self.btnSignIn.isEnabled = self.viewModel.isSignInActive
    }
    
    @objc private func credentialsChanged(){
        print("Credentails changed")
        self.viewModel.emailAddress = self.username.text ?? ""
        self.viewModel.password = self.password.text ?? ""
    
        self.btnSignIn.isEnabled = self.viewModel.isSignInActive
    }
    
    
    @IBAction func btnSignInAction(_ sender: Any) {
        self.viewModel.signInTapped()
    }
}

extension SignInViewController: SignInDelegate {
    func didSignIn() {
         print("Signed In")
        mydemoDelegation.message(username: self.viewModel.emailAddress, password: self.viewModel.password)
        self.navigationController?.popViewController(animated: true)
    }
    
    func didFailSignIn(message: String) {
         print("Signed In error \(message)")
    }
}
