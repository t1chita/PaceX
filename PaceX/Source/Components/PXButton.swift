//
//  PXButton.swift
//  PaceX
//
//  Created by Temur Chitashvili on 05.10.24.
//

import SwiftUI

struct PXButton: View {
    let title: String
    let backgroundColor: Color
    let textColor: Color
    let cornerRadius: CGFloat
    let height: CGFloat
    let padding: CGFloat
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            RoundedRectangle(cornerRadius: cornerRadius)
                .overlay {
                    Text(title)
                        .font(.headline)
                        .foregroundStyle(textColor)
                }
        }
        .frame(width: .infinity, height: height)
        .padding(padding)
    }
}
