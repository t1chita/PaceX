//
//  NavManager.swift
//  PaceX
//
//  Created by Temur Chitashvili on 05.10.24.
//

import SwiftUI

final class NavigationManager: ObservableObject {
    @Published var navPath = NavigationPath()

    public enum Destination: Codable, Hashable {
        case mainFlow
    }
    
    
    // Function to navigate to a specific destination
    func navigate(to destination: Destination) {
        print("Navigating to \(destination)") // Add this to ensure it's alive
        navPath.append(destination)
    }
    
    // Function to navigate back
    func navigateBack() {
        navPath.removeLast()
    }
    
    // Function to navigate to the root
    func navigateToRoot() {
        navPath.removeLast(navPath.count)
    }
}
