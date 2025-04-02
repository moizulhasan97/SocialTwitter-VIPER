//
//  LocalPostStorage.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 03/04/2025.
//

final class LocalPostStorage: PostStorage {
    
    private var posts: [Post] = []
    
    func getPosts() -> [Post] {
        posts.sorted {$0.time > $1.time}
    }
    
    func savePost(_ post: Post) {
        posts.append(post)
    }
}
