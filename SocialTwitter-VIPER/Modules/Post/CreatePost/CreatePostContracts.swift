//
//  CreatePostContracts.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 04/04/2025.
//

import Foundation

protocol CreatePostViewPresenter: ObservableObject {
    var postText: String { get }
    var selectedImage: String? { get }
    var availableImages: [String] { get }
    var user: User { get }
    
    func didTapPost()
    func didTapCancel()
    func didSelectImage(_ imageName: String)
}

protocol CreatePostViewInteractorInput: AnyObject {
    func createPost(_ post: Post)
}

protocol CreatePostViewInteractorOutput: AnyObject {
    func didPostWithSuccess()
    func didPostWithFailure(_ error: Error)
}

protocol CreatePostViewRouter {
    func dismiss()
}
