//
//  CreatePostViewPresenterImpl.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 04/04/2025.
//

import SwiftUI

final class CreatePostViewPresenterImpl: CreatePostViewPresenter {
    
    @Published var postText: String = ""
    @Published var selectedImage: String? = nil
    
    let availableImages: [String] = [
        "post-01",
        "post-02",
        "post-03",
        "post-04",
        "post-05",
        "post-06"
    ]
    let user: User
    var interactor: CreatePostViewInteractorInput!
    private let router: CreatePostViewRouter
    private var viewDismissal: DismissAction?
    
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
            image: UIImage.init(named: selectedImage ?? "")?.jpegData(compressionQuality: 1.0) ?? nil,
            description: postText,
            time: .now
        )
        interactor.createPost(post)
    }
    
    func setDismissAction(_ action: DismissAction) {
        viewDismissal = action
    }
    
    func didTapCancel() {
        router.dismiss(viewDismissal!)
    }
    
    func didSelectImage(_ imageName: String) {
        selectedImage = (selectedImage == imageName) ? nil : imageName
    }
}

// MARK: - CreatePostViewInteractorOutput
extension CreatePostViewPresenterImpl: CreatePostViewInteractorOutput {
    func didPostWithSuccess() {
        router.dismiss(viewDismissal!)
    }
    
    func didPostWithFailure(_ error: any Error) {
        assertionFailure(error.localizedDescription)
    }
}
