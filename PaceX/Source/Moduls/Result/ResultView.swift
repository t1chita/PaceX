//
//  ResultView.swift
//  PaceX
//
//  Created by Temur Chitashvili on 06.10.24.
//

import SwiftUI
import SpriteKit
import UIKit

struct ResultView: View {
    @EnvironmentObject var router: NavigationManager
    
    var body: some View {
        ZStack {
            Color
                .mainBlueColorLightest
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                trophyImage
                    .padding(.top, 30)
                
                congratulationsLabel
                
                quizIsCompletedLabel
                
                Spacer()
                
                bottomButtons
                    .padding(.bottom, 20)
            }
            .padding(.horizontal)
            .navigationTitle("Quiz Result")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden()
        }
    }

    // MARK: - UI Components
    private var trophyImage: some View {
        Image("trophy") // Replace "trophy" with your asset name
            .resizable()
            .scaledToFit()
            .frame(width: 200, height: 200)
            .background(
                ParticleView() // Add the particle effect view
            )
    }

    private var congratulationsLabel: some View {
        Text("Congratulations!")
            .font(.headline)
            .frame(height: 30)
    }

    private var quizIsCompletedLabel: some View {
        Text("You completed the quiz with \(String(UserManager.shared.user?.points ?? 0)) points!")
            .font(.body)
            .multilineTextAlignment(.center)
            .frame(height: 50)
            .padding(.horizontal, 24)
    }
    
    private var bottomButtons: some View {
        HStack(spacing: 10) {
            shareResultButton
            takeNextQuizButton
        }
    }

    private var shareResultButton: some View {
        Button(action: {
            // Handle share result action
        }) {
            Text("Share Results")
                .font(.system(size: 14, weight: .regular))
                .padding()
                .background(Color.clear)
                .cornerRadius(12)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.blue, lineWidth: 2) // Border color
                )
        }
    }

    private var takeNextQuizButton: some View {
        Button(action: {
            router.navigateToRoot()
        }) {
            Text("Take New Quiz")
                .font(.system(size: 14, weight: .regular))
                .padding()
                .background(Color.blue) // Background color
                .cornerRadius(12)
                .foregroundColor(.white)
        }
    }
}

struct ParticleView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: .zero)
        createEmitterLayer(in: view)
        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {
        // Update the view if necessary
    }

    private func createEmitterLayer(in view: UIView) {
        let layer = CAEmitterLayer()
        layer.emitterPosition = CGPoint(x: view.bounds.midX, y: view.bounds.midY)
        layer.emitterShape = .line // Change as needed

        let colors: [UIColor] = [
            .systemRed,
            .systemGreen,
            .systemBlue,
            .systemOrange,
            .systemPink,
            .systemYellow,
        ]

        var cells: [CAEmitterCell] = []
        
        for color in colors {
            let cell = CAEmitterCell()
            cell.scale = 0.05
            cell.emissionRange = .pi * 2
            cell.lifetime = 10
            cell.birthRate = 50
            cell.velocity = 400
            cell.color = color.cgColor
            cell.contents = UIImage(systemName: "sparkles")?.cgImage // Replace with your image asset
            cells.append(cell)
        }

        layer.emitterCells = cells
        view.layer.addSublayer(layer)
    }
}
#Preview {
    ResultView()
}
