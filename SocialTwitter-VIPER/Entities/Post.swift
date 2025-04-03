//
//  Post.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 01/04/2025.
//

import Foundation

final class Post: Identifiable {
    let id: String
    let user: User
    let image: Data?
    let description: String
    let time: Date
    var likes: Int
    var views: Int
    
    init(
        id: String = UUID().uuidString,
        user: User,
        image: Data? = nil,
        description: String,
        time: Date = .now,
        views: Int = 0,
        likes: Int = 0
    ) {
        self.id = id
        self.user = user
        self.image = image
        self.description = description
        self.time = time
        self.views = views
        self.likes = likes
    }
}
