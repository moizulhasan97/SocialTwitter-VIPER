//
//  PostListContracts.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 03/04/2025.
//

protocol PostListPresenter: AnyObject {
    func didTapCreatePost()
    func getPosts()
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
