//
//  PostListViewInteractorImpl.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 03/04/2025.
//
import Foundation

final class PostListViewInteractorImpl {
    
    weak private var presenter: PostListInteractorOutput?
    private var postStorage: PostStorage
    private let userStorage: UserStorage
    var storage: PostStorage {
        postStorage
    }
    
    init(
        presenter: PostListInteractorOutput?,
        postStorage: PostStorage,
        userStorage: UserStorage
    ) {
        self.presenter = presenter
        self.postStorage = postStorage
        self.userStorage = userStorage
        
        self.postStorage.didUpdatePosts = { [weak self] in
            self?.fetchPosts()
        }
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
