//
//  PostListViewInteractor.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 03/04/2025.
//
import SwiftUI

final class PostListViewInteractorImpl {
    
    @Published private(set) var posts: [Post] = []
    weak var presenter: PostListInteractorOutput?
    private let storage: PostStorage
    
    init(storage: PostStorage) {
        self.storage = storage
    }
}

// MARK: - PostListInteractorInput
extension PostListViewInteractorImpl: PostListInteractorInput {
    func fetchPosts() {
        let fetchedPostsFromStorage = storage.getPosts()
        posts = fetchedPostsFromStorage
        presenter?.didFetchPosts(fetchedPostsFromStorage)
    }
}
