//
//  RoundedImageModifier.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 03/04/2025.
//

import SwiftUI

struct RoundedImageModifier: ViewModifier {
    let width: CGFloat
    let height: CGFloat
    
    func body(content: Content) -> some View {
        content
            .frame(width: width, height: height)
            .clipShape(Circle())
    }
}

extension View {
    func roundedImage(width: CGFloat, height: CGFloat) -> some View {
        modifier(RoundedImageModifier(width: width, height: height))
    }
}
