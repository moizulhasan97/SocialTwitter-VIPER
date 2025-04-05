//
//  PostStorage.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 03/04/2025.
//

protocol PostStorage {
    var didUpdatePosts: (() -> Void)? { get set }
    func getPosts() -> [Post]
    func savePost(_ post: Post)
}


