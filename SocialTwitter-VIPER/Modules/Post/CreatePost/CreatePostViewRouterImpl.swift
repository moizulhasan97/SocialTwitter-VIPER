//
//  CreatePostViewRouterImpl.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 04/04/2025.
//
import SwiftUI

final class CreatePostViewRouterImpl {

    static func createCreatePostView(user: User, storage: PostStorage) -> CreatePostView {
        let router = CreatePostViewRouterImpl()
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
        return CreatePostView(presenter: presenter)
    }
}

// MARK: - CreatePostViewRouter
extension CreatePostViewRouterImpl: CreatePostViewRouter {
    func dismiss(_ action: DismissAction) {
        action()
    }
}
