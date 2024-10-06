//
//  MainFlowView.swift
//  PaceX
//
//  Created by Temur Chitashvili on 05.10.24.
//

import SwiftUI

struct MainFlowView: View {
    @StateObject var mainFlowViewModel = MainFlowViewModel()
    @EnvironmentObject var router: NavigationManager
    
    init () {
        setupTabBarAppearance()
    }
    
    var body: some View {
        TabView(selection: $mainFlowViewModel.tabSelection) {

            HomeView()
                .tag(1)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            BlogView()
                .tag(2)
                .tabItem {
                    Label("Blog", systemImage: "doc.text")
                }
            EscapeRoomView()
                .tag(3)
                .tabItem {
                    Label("Escape Room", systemImage: "puzzlepiece")
                }
            ProfileView()
                .tag(4)
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
    
    func setupTabBarAppearance() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.mainWhite  
        
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
        UITabBar.appearance().unselectedItemTintColor = UIColor.mainWhiteColorLightest
    }
}
#Preview {
    MainFlowView()
        .environmentObject(NavigationManager())
}
