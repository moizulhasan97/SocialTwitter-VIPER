//
//  CustomTextEditor.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 05/04/2025.
//

import SwiftUI

struct CustomTextEditor: View {
    
    @Binding var text: String
    let height: CGFloat
    let backgroundColor: Color
    let cornerRadius: CGFloat
    
    init(
        text: Binding<String>,
        backgroundColor: Color = .init(uiColor: .systemGray6),
        height: CGFloat = 150.0,
        cornerRadius: CGFloat = 8.0
    ) {
        self._text = text
        self.backgroundColor = backgroundColor
        self.height = height
        self.cornerRadius = cornerRadius
    }
    
    var body: some View {
        //
        TextEditor(text: $text)
            .frame(height: height)
            .padding()
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
            .padding(.horizontal)
    }
}
