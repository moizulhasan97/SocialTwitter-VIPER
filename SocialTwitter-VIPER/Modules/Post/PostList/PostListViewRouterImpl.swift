//
//  PostListViewRouterImpl.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 03/04/2025.
//

final class PostListViewRouterImpl: PostListRouter {
    
    static func createPostListView() -> PostListView {
        let router: PostListRouter = PostListViewRouterImpl()
        let postStorage: PostStorage = LocalPostStorage()
        let userStorage: UserStorage = LocalUserStorage()
        
        let presenter = PostListViewPresenterImpl(
            router: router,
            interactor: nil
        )
        
        let interactor = PostListViewInteractorImpl(
            presenter: presenter,
            postStorage: postStorage,
            userStorage: userStorage
        )
        presenter.interactor = interactor
        
        let postView = PostListView(presenter: presenter)
        return postView
    }
}
