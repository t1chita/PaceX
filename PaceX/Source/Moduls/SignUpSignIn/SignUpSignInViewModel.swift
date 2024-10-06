//
//  SignUpSignInViewModel.swift
//  PaceX
//
//  Created by Temur Chitashvili on 05.10.24.
//

import Foundation

final class SignUpSignInViewModel: ObservableObject {
    let mailPlaceHolder: String = "Email"
    let passwordPlaceHolder: String = "Password"
    let namePlaceHolder: String = "Name"
    let lastNamePlaceHolder: String = "Last Name"
    let agePlaceHolder: String = "Age"
    
    @Published var userNeedsSignUp: Bool = false
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var name: String = ""
    @Published var lastName: String = ""
    @Published var age: String = ""
    
    func signUpUser(completion: @escaping () -> Void) {
        UserManager.shared.createUser(user: User(name: name,
                                                 lastName: lastName,
                                                 age: age,
                                                 email: email,
                                                 points: 0))
        completion()
    }
    
    func clearProperties() {
        self.email = ""
        self.password = ""
        self.name = ""
        self.lastName = ""
        self.age = ""
    }
}
