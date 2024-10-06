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
            SatelliteView()
                .tag(2)
                .tabItem {
                    Label("Satellite", systemImage: "moon.stars")
                }
            BlogView()
                .tag(3)
                .tabItem {
                    Label("Blog", systemImage: "doc.text")
                }
        }
        .navigationBarBackButtonHidden()
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
