//
//  Post.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 01/04/2025.
//

import SwiftUI

final class Post: Identifiable, ObservableObject {
    let id: UUID
    let user: User
    let image: Image?
    let description: String
    let time: Date
    private let internalConcurrentQueue = DispatchQueue(
        label: "com.socialTwitter-VIPER.Post.internalConcurrentQueue",
        attributes: .concurrent
    )
    @Published private(set) var likes: Int
    @Published private(set) var views: Int
    
    //TODO: Handle comments
    //@Published var comments: Int
    
    init(
        id: UUID = .init(),
        user: User,
        image: Image? = nil,
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
