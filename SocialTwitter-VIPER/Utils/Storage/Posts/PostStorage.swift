//
//  PostStorage.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 03/04/2025.
//

protocol PostStorage {
    func getPosts() -> [Post]
    func savePost(_ post: Post)
}


