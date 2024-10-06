//
//  SignUpSignInView.swift
//  PaceX
//
//  Created by Temur Chitashvili on 05.10.24.
//

import SwiftUI

struct SignUpSignInView: View {
    @EnvironmentObject var router: NavigationManager
    @StateObject var signUpSignInViewModel = SignUpSignInViewModel()
    @AppStorage(UserDefaults.Keys.USER_LOGGED_IN) var isUserLoggedIn: Bool = false

    var body: some View {
        ZStack {
            Color
                .mainBlueColorLightest
                .ignoresSafeArea()
            
            VStackLayout(alignment: .leading) {
                PXText(title: signUpSignInViewModel.userNeedsSignUp ? "Already Have An Account?" : "Create Account",
                       fontSize: 16,
                       color: .white,
                       fontType: .bold) {
                    signUpSignInViewModel.userNeedsSignUp.toggle()
                    signUpSignInViewModel.clearProperties()
                }
                       .underline()
                
                if !signUpSignInViewModel.userNeedsSignUp {
                    VStack(spacing: 16) {
                        PXTextField(text: $signUpSignInViewModel.email,
                                    placeholder: signUpSignInViewModel.mailPlaceHolder,
                                    fontSize: 14,
                                    fontWeight: .regular,
                                    cornerRadius: 12,
                                    lineWidth: 1,
                                    borderColor: .black,
                                    height: 40,
                                    isSecured: false)
                        
                        PXTextField(text: $signUpSignInViewModel.password,
                                    placeholder: signUpSignInViewModel.passwordPlaceHolder,
                                    fontSize: 14,
                                    fontWeight: .regular,
                                    cornerRadius: 12,
                                    lineWidth: 1,
                                    borderColor: .black,
                                    height: 40,
                                    isSecured: true)
                    }
                    PXButton(title: "Sign In",
                             backgroundColor: .mainBlueColorDark,
                             textColor: .white,
                             cornerRadius: 12,
                             height: 40,
                             padding: 0) {
                        router.navigate(to: .mainFlow)
                        isUserLoggedIn = true
                    }
                } else {
                    VStack(spacing: 16) {
                        PXTextField(text: $signUpSignInViewModel.name,
                                    placeholder: signUpSignInViewModel.namePlaceHolder,
                                    fontSize: 14,
                                    fontWeight: .regular,
                                    cornerRadius: 12,
                                    lineWidth: 1,
                                    borderColor: .black,
                                    height: 40,
                                    isSecured: false)
                        
                        PXTextField(text: $signUpSignInViewModel.lastName,
                                    placeholder: signUpSignInViewModel.lastNamePlaceHolder,
                                    fontSize: 14,
                                    fontWeight: .regular,
                                    cornerRadius: 12,
                                    lineWidth: 1,
                                    borderColor: .black,
                                    height: 40,
                                    isSecured: false)
                        
                        PXTextField(text: $signUpSignInViewModel.age,
                                    placeholder: signUpSignInViewModel.agePlaceHolder,
                                    fontSize: 14,
                                    fontWeight: .regular,
                                    cornerRadius: 12,
                                    lineWidth: 1,
                                    borderColor: .black,
                                    height: 40,
                                    isSecured: false)
                        
                        PXTextField(text: $signUpSignInViewModel.email,
                                    placeholder: signUpSignInViewModel.mailPlaceHolder,
                                    fontSize: 14,
                                    fontWeight: .regular,
                                    cornerRadius: 12,
                                    lineWidth: 1,
                                    borderColor: .black,
                                    height: 40,
                                    isSecured: false)
                        
                        PXTextField(text: $signUpSignInViewModel.password,
                                    placeholder: signUpSignInViewModel.passwordPlaceHolder,
                                    fontSize: 14,
                                    fontWeight: .regular,
                                    cornerRadius: 12,
                                    lineWidth: 1,
                                    borderColor: .black,
                                    height: 40,
                                    isSecured: true)
                        
                        PXButton(title: "Sign Up",
                                 backgroundColor: .mainBlueColorDark,
                                 textColor: .white,
                                 cornerRadius: 12,
                                 height: 40,
                                 padding: 0) {
                            signUpSignInViewModel.signUpUser {
                                router.navigate(to: .mainFlow)
                                isUserLoggedIn = true
                            }
                        }
                    }
                }
            }
            .padding(.horizontal, 16)
        }
    }
}

#Preview {
    SignUpSignInView(signUpSignInViewModel: SignUpSignInViewModel())
        .environmentObject(NavigationManager())
}
