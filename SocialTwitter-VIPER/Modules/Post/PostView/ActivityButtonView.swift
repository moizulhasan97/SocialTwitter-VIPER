//
//  ActivityButtonView.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 03/04/2025.
//
import SwiftUI

enum ActivityButton: CaseIterable {
    case comments,
         views,
         likes,
         share
    
    var image: Image {
        switch self {
        case .comments:
            Image(systemName: "bubble.right.fill")
            
        case .views:
            Image(systemName: "eye.fill")
            
        case .likes:
            Image(systemName: "hand.thumbsup.fill")
            
        case .share:
            Image(systemName: "arrowshape.turn.up.right.fill")
        }
    }
}

struct ActivityButtonView: View {
    let button: ActivityButton
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack (
                alignment: .center,
                spacing: ActivityButtonViewConstants.activityButtonImageTextHorizontalSpacing
            ) {
                //
                button.image
                    .resizable()
                    .frame(
                        width: ActivityButtonViewConstants.activityButtonWidth,
                        height: ActivityButtonViewConstants.activityButtonHeight
                    )
                    .foregroundStyle(.white)
                //
                if button != .share {
                    Text("00")
                        .font(.caption)
                        .foregroundStyle(.white)
                }
                
            }
        }
    }
}

//MARK: - Constants
fileprivate enum ActivityButtonViewConstants {
    static var activityButtonHeight: CGFloat = 15.0,
               activityButtonWidth: CGFloat = 15.0,
               activityButtonImageTextHorizontalSpacing: CGFloat = 4.0
}
