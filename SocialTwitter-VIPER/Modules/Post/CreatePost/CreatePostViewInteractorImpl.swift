//
//  CreatePostViewInteractorImpl.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 04/04/2025.
//

import Foundation

final class CreatePostViewInteractorImpl {
    
    weak var presenter: CreatePostViewInteractorOutput?
    let storage: PostStorage
    
    init(
        presenter: CreatePostViewInteractorOutput?,
        storage: PostStorage
    ) {
        self.presenter = presenter
        self.storage = storage
    }
}

// MARK: - CreatePostViewInteractorInput
extension CreatePostViewInteractorImpl: CreatePostViewInteractorInput {
    func createPost(_ post: Post) {
        storage.savePost(post)
        presenter?.didPostWithSuccess()
    }
}
