//
//  CreatePostViewPresenterImpl.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 04/04/2025.
//

import Foundation

final class CreatePostViewPresenterImpl: CreatePostViewPresenter {
    
    @Published var postText: String = ""
    @Published var selectedImage: String? = nil
    
    let availableImages: [String] = ["photo", "camera", "globe", "book"]
    var canPost: Bool {
        !postText.isEmpty
    }
    
    let user: User
    private let router: CreatePostViewRouter
    var interactor: CreatePostViewInteractorInput!
    
    init(
        user: User,
        router: CreatePostViewRouter,
        interactor: CreatePostViewInteractorInput?
    ) {
        self.user = user
        self.router = router
        self.interactor = interactor
    }
    
    func didTapPost() {
        let post: Post = .init(
            id: UUID().uuidString,
            user: user,
            image: selectedImage?.data(using: .utf8),
            description: postText,
            time: .now
        )
        interactor.createPost(post)
    }
    
    func didTapCancel() {
        router.dismiss()
    }
    
    func didSelectImage(_ imageName: String) {
        selectedImage = (selectedImage == imageName) ? nil : imageName
    }
}

extension CreatePostViewPresenterImpl: CreatePostViewInteractorOutput {
    func didPostWithSuccess() {
        router.dismiss()
    }
    
    func didPostWithFailure(_ error: any Error) {
        assertionFailure(error.localizedDescription)
    }
}
