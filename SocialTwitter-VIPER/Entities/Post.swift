//
//  Post.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 01/04/2025.
//

import Foundation

final class Post: Identifiable, ObservableObject {
    let id: UUID
    let user: User
    let imageName: String?
    let description: String
    let time: Date
    private let internalConcurrentQueue = DispatchQueue(
        label: "com.socialTwitter-VIPER.Post.internalConcurrentQueue",
        attributes: .concurrent
    )
    
    private var views: Int
    private var likes: Int
    //TODO: Handle comments
    //@Published var comments: Int
    
    init(
        id: UUID = .init(),
        user: User,
        imageName: String? = nil,
        description: String,
        time: Date = .now,
        views: Int = 0,
        likes: Int = 0
    ) {
        self.id = id
        self.user = user
        self.imageName = imageName
        self.description = description
        self.time = time
        self.views = views
        self.likes = likes
    }
    
    func incrementViewCount() {
        internalConcurrentQueue.async(flags: .barrier) {
            self.views += 1
        }
    }
    
    //TODO: Handle multiple likes/red heart fill
    func incrementLikeCount() {
        internalConcurrentQueue.async(flags: .barrier) {
            self.likes += 1
        }
    }
    
    func getViews() -> Int {
        internalConcurrentQueue.sync {
            views
        }
    }
    
    func getLikes() -> Int {
        internalConcurrentQueue.sync {
            likes
        }
    }
}
