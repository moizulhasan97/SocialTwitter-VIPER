//
//  PostListViewPresenterImpl.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 03/04/2025.
//
import Foundation

final class PostListViewPresenterImpl {
    @Published var posts: [Post] = []
    private let router: PostListRouter
    var interactor: PostListInteractorInput!
    
    init(
        router: PostListRouter,
        interactor: PostListInteractorInput?
    ) {
        self.router = router
        self.interactor = interactor
    }
}

// MARK: - PostListPresenter
extension PostListViewPresenterImpl: PostListPresenter {
    func createPost(_ post: Post) {
        router.navigateToCreatePost()
    }
    
    func onAppear() {
        interactor.fetchPosts()
    }
}

// MARK: - PostListInteractorOutput
extension PostListViewPresenterImpl: PostListInteractorOutput {
    func didFetchPosts(_ posts: [Post]) {
        self.posts = posts
    }
}
