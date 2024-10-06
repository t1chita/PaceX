//
//  PXTextField.swift
//  PaceX
//
//  Created by Temur Chitashvili on 05.10.24.
//


import SwiftUI

struct PXTextField: View {
    @Binding var text: String
    let placeholder: String
    let fontSize: CGFloat
    let fontWeight: Font.Weight?
    let cornerRadius: CGFloat
    let lineWidth: CGFloat
    let borderColor: Color
    let height: CGFloat
    let isSecured: Bool
    var body: some View {
        if isSecured {
            SecureField(placeholder,
                        text: $text)
            .font(.system(size: fontSize, weight: fontWeight))
            .padding(12)
            .background(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(lineWidth: lineWidth)
                    .foregroundStyle(borderColor)
            )
            .frame(width: .infinity, height: height)
        } else {
            TextField(placeholder,
                      text: $text)
            .font(.system(size: fontSize, weight: fontWeight))
            .padding(12)
            .background(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(lineWidth: lineWidth)
                    .foregroundStyle(borderColor)
            )
            .frame(width: .infinity, height: height)
        }
    }
}

