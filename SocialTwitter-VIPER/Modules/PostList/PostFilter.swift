//
//  PostFilter.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 03/04/2025.
//

enum PostFilter: CaseIterable {
    case myPosts
    case allPosts
    
    var title: String {
        switch self {
        case .myPosts:
            return "My Posts"
            
        case .allPosts:
            return "All Posts"
        }
    }
}
