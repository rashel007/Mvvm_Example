//
//  User.swift
//  Mvvm_Example
//
//  Created by Estique on 2/10/20.
//  Copyright © 2020 Estique. All rights reserved.
//


/*
 {
 userId: 1,
 id: 1,
 title: "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
 body: "quia et suscipit
 suscipit recusandae consequuntur expedita et cum
 reprehenderit molestiae ut ut quas totam
 nostrum rerum est autem sunt rem eveniet architecto"
 },
 */
import Foundation

class User : Codable {
    var userId: Int?
    var id: Int?
    var title: String?
    var body: String?
}
