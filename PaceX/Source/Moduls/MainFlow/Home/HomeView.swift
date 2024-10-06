//
//  HomeVie.swift
//  PaceX
//
//  Created by Temur Chitashvili on 06.10.24.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var router: NavigationManager
    @StateObject var homeViewModel = HomeViewModel()
    var body: some View {
        ZStack {
            Color
                .mainBlueColorLighter
                .ignoresSafeArea()
            VStack {
                VStack {
                    HStack {
                        PXText(title: "Hello \(UserManager.shared.user?.name ?? "" )",
                               fontSize: 16,
                               color: .white,
                               fontType: .bold) { }
                        
                        Spacer()
                        
                        PXText(title: "You Have \(String(UserManager.shared.user?.points ?? 0)) Points",
                               fontSize: 16,
                               color: .white,
                               fontType: .bold) { }
                    }
                    .padding()
                    .background(Color.mainWhiteColorDark)
                    .cornerRadius(12)
                    
                    Spacer()
                    
                }
                .padding()
                
                RoundedRectangle(cornerRadius: 16)
                    .foregroundStyle(.mainBlueColorLight)
                    .padding(.bottom, -12)
                    .overlay {
                        List(homeViewModel.questions) { question in
                            HStack(spacing: 10) {
                                Image(question.image)
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .cornerRadius(10)
                                
                                PXText(title: question.title,
                                       fontSize: 16,
                                       color: .white,
                                       fontType: .bold) { }
                                
                                Spacer()
                                
                                Button {
                                    //TODO: Go To Details
                                } label: {
                                    Image(systemName: "chevron.right")
                                        .resizable()
                                        .frame(width: 14, height: 16)
                                        .foregroundStyle(.mainWhite)
                                }
                                .buttonStyle(PlainButtonStyle())
                            }
                            .padding()
                            .overlay {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.mainWhite)
                            }
                            .listRowSeparator(.hidden)
                            .listRowBackground(Color.clear)  
                        }
                    }
                .background(Color.clear)
                .foregroundStyle(.clear)
                .scrollContentBackground(.hidden)
                .listRowBackground(Color.clear)
                .listStyle(PlainListStyle())

            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    HomeView()
        .environmentObject(NavigationManager())
}
