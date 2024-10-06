//
//  OnBoardingView.swift
//  PaceX
//
//  Created by Temur Chitashvili on 05.10.24.
//

import SwiftUI
import WebKit

struct OnBoardingView: View {
    @StateObject var viewModel = OnBoardingViewModel()
    @EnvironmentObject var router: NavigationManager
    @AppStorage(UserDefaults.Keys.APP_SHOWED_ONBOARDING) var showedOnBoarding: Bool = false
    @State private var isVisible = true
    @State private var screenHeight: CGFloat = 0
    @State private var rocketOffset: CGSize = CGSize(width: 0, height: UIScreen.main.bounds.height / 2)
    
    var body: some View {
        ZStack {
            Color
                .mainBlueColorLighter
                .ignoresSafeArea()
            
            GifImage(name: "rocket")
                .frame(width: 100, height: 100)
                .offset(rocketOffset) // Apply offset to move rocket
                               .onAppear {
                                   animateRocket() // Animate on appear
                               }

            VStackLayout(spacing: 24) {
                
                Image(.logo)
                    .resizable()
                    .frame(width: 200, height: 200)
                    .cornerRadius(12)
                
                Text("Introduction")
                    .font(.title)
            }
            VStack {
                Spacer()
                
                PXButton(title: "Get Started",
                         backgroundColor: .mainBlueColorDark,
                         textColor: .white,
                         cornerRadius: 12,
                         height: 50,
                         padding: 16) {
                    showedOnBoarding = true
                    print("Get Started")
                }
            }
        }
    }
    
    private func animateRocket() {
          // Animate the rocket upwards while oscillating left and right
          withAnimation(Animation.easeInOut(duration: 12).repeatForever(autoreverses: true)) {
              rocketOffset = CGSize(width: 20, height: -UIScreen.main.bounds.height - 100) // Move rocket upwards and to the right
          }

          // Delay the left animation
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
              withAnimation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: true)) {
                  rocketOffset = CGSize(width: -20, height: -UIScreen.main.bounds.height - 100) // Move rocket upwards and to the left
              }
          }
      }
}

struct GifImage: UIViewRepresentable {
    private let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func makeUIView(context: Context) -> some UIView {
        let webView = WKWebView()
        let url = Bundle.main.url(forResource: name, withExtension: "gif")!
        let data = try! Data(contentsOf: url)
        
        webView.load(
            data,
            mimeType: "image/gif",
            characterEncodingName: "UTF-8",
            baseURL: url.deletingLastPathComponent()
        )
        
        return webView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        uiView.reloadInputViews()
    }
}
#Preview {
    OnBoardingView()
}
