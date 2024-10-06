//
//  UserManager.swift
//  PaceX
//
//  Created by Temur Chitashvili on 06.10.24.
//

import Foundation

final class UserManager: ObservableObject {
    static let shared = UserManager()
    
    @Published var user: User?
    
    private init() { }
    
    func createUser(user: User) {
        self.user = user
    }
}
