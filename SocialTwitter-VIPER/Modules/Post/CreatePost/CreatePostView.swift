//
//  CreatePostView.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 04/04/2025.
//

import SwiftUI

struct CreatePostView: View {
    
    @Environment(\.dismiss) var viewDismissal
    @ObservedObject var presenter: CreatePostViewPresenterImpl
    
    var body: some View {
        Text("Create Post View")
    }
}

// MARK: - CreatePostViewRouter
extension CreatePostView: CreatePostViewRouter {
    func dismiss() {
        viewDismissal()
    }
}

fileprivate final class MockCreatePostViewInteractorInputImpl: CreatePostViewInteractorInput {
    func createPost(_ post: Post) {}
}

fileprivate final class MockCreatePostViewRouterImpl: CreatePostViewRouter {
    func dismiss() {}
}

#Preview {
    CreatePostView(presenter: .init(
        user: .init(
            id: UUID().uuidString,
            name: "Test Name",
            username: "testName",
            isVerified: false,
            profileImage: .init()
        ),
        router: MockCreatePostViewRouterImpl(),
        interactor: MockCreatePostViewInteractorInputImpl()
    ))
}

