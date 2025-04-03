//
//  PostListViewPresenterImpl.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 03/04/2025.
//
import Foundation

final class PostListViewPresenterImpl {
    @Published var posts: [Post] = []
    @Published var users: [User] = []
    @Published var selectedFilter: PostFilter = .allPosts {
        didSet {
            interactor.fetchPosts()
        }
    }
    @Published var selectedUser: User = MockUsers.users.first! {
        didSet {
            interactor.fetchPosts()
        }
    }
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
        interactor.fetchUsers()
        interactor.fetchPosts()
    }
}

// MARK: - PostListInteractorOutput
extension PostListViewPresenterImpl: PostListInteractorOutput {
    func didFetchPosts(_ posts: [Post]) {
        self.posts = selectedFilter == .myPosts ? posts.filter {$0.user.id == selectedUser.id} : posts
    }
    
    func didFetchUsers(_ users: [User]) {
        self.users = users
        selectedUser = users.first!
    }
}
