//
//  Authentication.swift
//  Mvvm_Example
//
//  Created by Estique on 2/17/20.
//  Copyright © 2020 Estique. All rights reserved.
//

import Foundation

protocol Authentication {
    func singIn(completion: (SignInResponse) -> Void)
}
