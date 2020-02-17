//
//  SessionService.swift
//  Mvvm_Example
//
//  Created by Estique on 2/17/20.
//  Copyright © 2020 Estique. All rights reserved.
//

import Foundation

class SessionService: Authentication {
    func singIn(completion: (SignInResponse) -> Void) {
        // call to backend
        completion(.success(token: "12345", userID: "121212"))
    }
    
    
}
