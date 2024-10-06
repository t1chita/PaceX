//
//  PXText.swift
//  PaceX
//
//  Created by Temur Chitashvili on 05.10.24.
//



import SwiftUI

struct PXText: View {
    let title: String
    let fontSize: CGFloat
    let color: Color
    let fontType: Font.Weight?
    let action: () -> Void
    
    var body: some View {
        Text(title)
            .font(.system(size: fontSize, weight: fontType))
            .foregroundStyle(color)
            .onTapGesture {
                action()
            }
    }
}
