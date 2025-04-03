//
//  PostListContracts.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 03/04/2025.
//
import Foundation

protocol PostListPresenter: ObservableObject {
    var posts: [Post] { get }
    func onAppear()
    func createPost(_ post: Post)
}

protocol PostListInteractorInput: AnyObject {
    func fetchPosts()
}

protocol PostListInteractorOutput: AnyObject {
    func didFetchPosts(_ posts: [Post])
}

protocol PostListRouter: AnyObject {
    func navigateToCreatePost()
}
