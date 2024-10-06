//
//  BlogView.swift
//  PaceX
//
//  Created by Temur Chitashvili on 06.10.24.
//


import SwiftUI

struct BlogView: View {
    @EnvironmentObject var router: NavigationManager
    @StateObject var blogViewModel = BlogViewModel()
    var body: some View {
        ZStack {
            Color
                .mainBlueColorLighter
                .ignoresSafeArea()
            Text("BlogView")

        }
    }
}
