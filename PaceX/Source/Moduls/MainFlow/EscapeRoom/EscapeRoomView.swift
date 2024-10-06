//
//  EscapeRoomView.swift
//  PaceX
//
//  Created by Temur Chitashvili on 06.10.24.
//


import SwiftUI

struct EscapeRoomView: View {
    @EnvironmentObject var router: NavigationManager
    @StateObject var escapeRoomViewModel = EscapeRoomViewModel()
    var body: some View {
        ZStack {
            Color
                .mainBlueColorLighter
                .ignoresSafeArea()
            Text("EscapeRoom")

        }
    }
}
