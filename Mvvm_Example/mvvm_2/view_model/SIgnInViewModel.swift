//
//  SIgnInViewModel.swift
//  Mvvm_Example
//
//  Created by Estique on 2/17/20.
//  Copyright © 2020 Estique. All rights reserved.
//

import Foundation

class SIgnInViewModel{
    
    private let authentication: Authentication
    
    weak var delegate: SignInDelegate?
    
    var emailAddress = ""
    var password = ""
    var isSignInActive: Bool {
        return self.emailAddress != "" && self.password != ""
    }
    
    
    init(authentication: Authentication) {
        self.authentication = authentication
    }
    
    func signInTapped() {
        self.authentication.singIn { (response) in
            guard let delegate = self.delegate else {return}
            
            if case .success(_) = response {
                delegate.didSignIn()
            }else if case .error(let message) = response {
                delegate.didFailSignIn(message: message)
            }
        }
    }
}
