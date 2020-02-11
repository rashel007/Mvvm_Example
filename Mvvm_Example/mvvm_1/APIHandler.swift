//
//  APIHandler.swift
//  Mvvm_Example
//
//  Created by Estique on 2/10/20.
//  Copyright © 2020 Estique. All rights reserved.
//

import Foundation


class APIHandler {
    
    typealias completionBlock = ([User]) -> ()
    
    func getDataFromApi(withUrl strUrl: String, completionBlock: @escaping completionBlock){
        print(strUrl)
        
        if let unwrappedUrl = URL(string: strUrl) {
            URLSession.shared.dataTask(with: unwrappedUrl, completionHandler: {(
                data, response, error) in
                
                if data != nil {
                    let jsonDecoder = JSONDecoder()
                    let userArray = try? jsonDecoder.decode([User].self, from: data!)
                    print(userArray![0].title)
                    completionBlock(userArray!)
                }else {
                    let mArray = [User]()
                    completionBlock(mArray)
                }
                
                
                }).resume()
        }
            
      
    }
}
