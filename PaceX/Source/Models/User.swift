//
//  User.swift
//  PaceX
//
//  Created by Temur Chitashvili on 06.10.24.
//

import Foundation

struct User {
    let id = UUID().uuidString
    let name: String
    let lastName: String
    let age: String
    let email: String
    var points: Int
}
