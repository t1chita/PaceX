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

    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.navPath) {
                Group {
                    if !showedOnBoarding {
                        OnBoardingView()
                    } else {
                        SignUpSignInView()
                    }
                }
                .navigationDestination(for: NavigationManager.Destination.self) { destination in
                    switch destination {
                    case .mainFlow:
                        MainFlowView()
                    }
                }
            }
            .environmentObject(router)
        }
    }
}
