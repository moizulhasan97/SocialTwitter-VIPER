//
//  PostListContracts.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 03/04/2025.
//

protocol PostListPresenter: AnyObject {
    var posts: [Post] { get }
    func didTapCreatePost()
    func onAppear()
}

protocol PostListInteractorInput: AnyObject {
    var posts: [Post] { get }
    func fetchPosts()
}

protocol PostListInteractorOutput: AnyObject {
    func didFetchPosts(_ posts: [Post])
}

protocol PostListRouter: AnyObject {
    func navigateToCreatePost()
}
