//
//  PostListViewInteractorImpl.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 03/04/2025.
//
import SwiftUI

final class PostListViewInteractorImpl {
    
    weak private var presenter: PostListInteractorOutput?
    private let postStorage: PostStorage
    private let userStorage: UserStorage
    
    init(
        presenter: PostListInteractorOutput?,
        postStorage: PostStorage,
        userStorage: UserStorage
    ) {
        self.presenter = presenter
        self.postStorage = postStorage
        self.userStorage = userStorage
    }
}

// MARK: - PostListInteractorInput
extension PostListViewInteractorImpl: PostListInteractorInput {
    func fetchPosts() {
        let fetchedPosts = postStorage.getPosts()
        presenter?.didFetchPosts(fetchedPosts)
    }
    
    func fetchUsers() {
        let fetchedUsers = userStorage.getUsers()
        presenter?.didFetchUsers(fetchedUsers)
    }
}
