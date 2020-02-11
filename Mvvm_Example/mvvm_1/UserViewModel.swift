//
//  UserViewModel.swift
//  Mvvm_Example
//
//  Created by Estique on 2/10/20.
//  Copyright © 2020 Estique. All rights reserved.
//

import Foundation


class UserViewModel {
    
    private var apiHandler = APIHandler()
    private var dataSourceArray = [User]()
    
    typealias completionBlock  = () -> ()
    
    func getDataFromAPIHandlerClass(url: String, completionBlock: @escaping completionBlock) {
        apiHandler.getDataFromApi(withUrl: url) { [weak self] (arrUser) in
            
            self?.dataSourceArray = arrUser
            completionBlock()
        }
    }
    
    
    func getNumberOfRowsInSection() -> Int {
        return dataSourceArray.count
    }
    
    
    func getUserAtIndex(index: Int) -> User {
        let user = dataSourceArray[index]
        return user
    }
}
