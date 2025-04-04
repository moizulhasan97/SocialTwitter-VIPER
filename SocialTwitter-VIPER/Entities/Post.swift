//
//  Post.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 01/04/2025.
//

import Foundation

struct Post: Identifiable {
    let id: String
    let user: User
    let image: Data?
    let description: String
    let time: Date
    
    init(
        id: String = UUID().uuidString,
        user: User,
        image: Data? = nil,
        description: String,
        time: Date = .now
    ) {
        self.id = id
        self.user = user
        self.image = image
        self.description = description
        self.time = time
    }
}
