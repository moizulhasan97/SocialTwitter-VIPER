//
//  PostListContracts.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 03/04/2025.
//
import Foundation

protocol PostListPresenter: ObservableObject {
    var showCreatePostView: Bool { get }
    var posts: [Post] { get }
    var users: [User] { get }
    var selectedFilter: PostFilter { get }
    var selectedUser: User { get }
    func onAppear()
    func didTapCreateNewPost()
}

protocol PostListInteractorInput: AnyObject {
    func fetchPosts()
    func fetchUsers()
}

protocol PostListInteractorOutput: AnyObject {
    func didFetchPosts(_ posts: [Post])
    func didFetchUsers(_ users: [User])
}

protocol PostListRouter: AnyObject {
    //func navigateToCreatePost(user: User)
}
