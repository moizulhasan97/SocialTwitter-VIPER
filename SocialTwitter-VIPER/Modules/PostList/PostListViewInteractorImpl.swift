//
//  PostListViewInteractorImpl.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 03/04/2025.
//
import SwiftUI

final class PostListViewInteractorImpl {
    
    weak private var presenter: PostListInteractorOutput?
    private let storage: PostStorage
    
    init(
        presenter: PostListInteractorOutput?,
        storage: PostStorage
    ) {
        self.presenter = presenter
        self.storage = storage
    }
}

// MARK: - PostListInteractorInput
extension PostListViewInteractorImpl: PostListInteractorInput {
    func fetchPosts() {
        let fetchedPosts = storage.getPosts()
        presenter?.didFetchPosts(fetchedPosts)
    }
}
