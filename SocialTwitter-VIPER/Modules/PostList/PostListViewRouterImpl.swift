//
//  PostListViewRouterImpl.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 03/04/2025.
//

final class PostListViewRouterImpl: PostListRouter {
    
    static func createPostListView() -> PostListView {
        let router: PostListRouter = PostListViewRouterImpl()
        let storage: PostStorage = LocalPostStorage()
        
        let presenter = PostListViewPresenterImpl(
            router: router,
            interactor: nil
        )
        
        let interactor = PostListViewInteractorImpl(
            presenter: presenter,
            storage: storage
        )
        presenter.interactor = interactor
        
        let postView = PostListView(presenter: presenter)
        return postView
    }
    
    func navigateToCreatePost() {
        print("HADNLE NAVIGATION FOR CREATE POST")
    }
    
    
}
