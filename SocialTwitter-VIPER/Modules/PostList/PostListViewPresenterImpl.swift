//
//  PostListViewPresenterImpl.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 03/04/2025.
//
import Foundation

enum PostFilter: CaseIterable {
    case myPosts
    case allPosts
    
    var title: String {
        switch self {
        case .myPosts:
            return "My Posts"
            
        case .allPosts:
            return "All Posts"
        }
    }
}

final class PostListViewPresenterImpl {
    @Published var posts: [Post] = []
    @Published var selectedFilter: PostFilter = .allPosts {
        didSet {
            interactor.fetchPosts()
        }
    }
    private let selectedUserID: String = "1"
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
        self.posts = selectedFilter == .myPosts ? posts.filter {$0.user.id == selectedUserID} : posts
    }
}
