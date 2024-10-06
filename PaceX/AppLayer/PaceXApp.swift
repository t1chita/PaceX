//
//  PaceXApp.swift
//  PaceX
//
//  Created by Temur Chitashvili on 05.10.24.
//

import SwiftUI

@main
struct PaceXApp: App {
    @StateObject var router = NavigationManager()
    
    @AppStorage(UserDefaults.Keys.APP_SHOWED_ONBOARDING) var showedOnBoarding: Bool = false
    @AppStorage(UserDefaults.Keys.USER_LOGGED_IN) var isUserLoggedIn: Bool = false // New flag to track login state

    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.navPath) {
                Group {
                    if !showedOnBoarding {
                        OnBoardingView()
                    } else if !isUserLoggedIn {
                        SignUpSignInView()
                    } else {
                        MainFlowView() // Direct to the main flow if user is logged in
                    }
                }
                .navigationDestination(for: NavigationManager.Destination.self) { destination in
                    switch destination {
                    case .mainFlow:
                        MainFlowView()
                    case .quizPage(let quiz):
                        QuizzDetailsView(quiz: quiz)
                    case .resultPage:
                        ResultView()
                    }
                }
            }
            .environmentObject(router)
        }
    }
}
