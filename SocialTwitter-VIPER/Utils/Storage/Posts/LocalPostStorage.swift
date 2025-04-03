//
//  LocalPostStorage.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 03/04/2025.
//

import SwiftUI

final class LocalPostStorage: PostStorage {
    
    private var posts: [Post] = [
        .init(
            id: .init(),
            user: .init(
                id: .init(),
                name: "First User",
                username: "firstUser21",
                isVerified: false,
                profileImage: Image(.profileImage1)
            ),
            image: Image(.post),
              description: "This is a description for first post",
            time: .now,
              views: 10,
              likes: 10
             ),
        .init(
            id: .init(),
            user: .init(
                id: .init(),
                name: "Second User",
                username: "secondUser21",
                isVerified: false,
                profileImage: Image(.profileImage1)
            ),
            image: Image(.post),
              description: "This is a description for second post",
            time: Calendar.current.date(byAdding: .minute, value: 10, to: .now)!,
              views: 20,
              likes: 20
             ),
    ]
    
    func getPosts() -> [Post] {
        posts.sorted {$0.time > $1.time}
    }
    
    func savePost(_ post: Post) {
        posts.append(post)
    }
}
