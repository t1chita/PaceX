//
//  ProfileView.swift
//  PaceX
//
//  Created by Temur Chitashvili on 06.10.24.
//


import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var router: NavigationManager
    @StateObject var profileViewModel = ProfileViewModel()
    var body: some View {
        ZStack {
            Color
                .mainBlueColorLighter
                .ignoresSafeArea()
            Text("ProfileView")

        }
    }
}
