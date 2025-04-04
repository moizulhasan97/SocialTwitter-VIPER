//
//  CreatePostViewRouterImpl.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 04/04/2025.
//

final class CreatePostViewRouterImpl {
    
    var view: CreatePostViewRouter?

    static func createCreatePostView(user: User) -> CreatePostView {
        let router: CreatePostViewRouter = CreatePostViewRouterImpl()
        let storage: PostStorage = LocalPostStorage()
        let interactor = CreatePostViewInteractorImpl(
            presenter: nil,
            storage: storage
        )
        let presenter: CreatePostViewPresenterImpl = .init(
            user: user,
            router: router,
            interactor: interactor
        )
        interactor.presenter = presenter
        let view = CreatePostView(presenter: presenter)
        return view
    }
}

// MARK: - CreatePostViewRouter
extension CreatePostViewRouterImpl: CreatePostViewRouter {
    func dismiss() {
        view?.dismiss()
    }
}
