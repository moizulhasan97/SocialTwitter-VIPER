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
        //
        NavigationView {
            //
            VStack {
                //
                HStack {
                    //
                    userImage
                    //
                    userDetails
                    //
                    Spacer()
                }
                .padding()
                //
                textEditor
                //
                imageScroller
                //
                Spacer()
            }
            .navigationTitle(CreatePostViewConstants.navigationTitle)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button(CreatePostViewConstants.cancelButtonTitle) {
                        presenter.didTapCancel()
                    }
                }
                ToolbarItem(placement: .primaryAction) {
                    Button(CreatePostViewConstants.postButtonTitle) {
                        presenter.didTapPost()
                    }
                    .disabled(presenter.postText.isEmpty)
                }
            }
        }
        .onAppear {
            presenter.setDismissAction(viewDismissal)
        }
    }
    
    private var userImage: some View {
        getUserImage()
            .resizable()
            .roundedImage(
                width: CreatePostViewConstants.userProfileWidth,
                height: CreatePostViewConstants.userProfileHeight
            )
    }
    
    private var userDetails: some View {
        //
        VStack (alignment: .leading) {
            //
            Text(presenter.user.name)
                .foregroundStyle(Color.blueThemeTwitter)
                .font(.headline)
                .truncationMode(.tail)
            //
            Text(presenter.user.username)
                .font(.caption)
                .bold()
                .foregroundStyle(Color.customLightGray)
        }
    }
    
    private func getUserImage() -> Image {
        Image(uiImage: .init(data: presenter.user.profileImage)!)
    }
    
    private var textEditor: some View {
        CustomTextEditor(text: $presenter.postText)
    }
    
    private var imageScroller: some View {
        //
        ScrollView(.horizontal) {
            //
            HStack {
                //
                ForEach(presenter.availableImages, id: \.self) { imageName in
                    //
                    Image(imageName)
                        .resizable()
                        .frame(
                            width: CreatePostViewConstants.postImageWidth,
                            height: CreatePostViewConstants.postImageHeight
                        )
                        .padding()
                        .background(presenter.selectedImage == imageName ? Color.blue.opacity(CreatePostViewConstants.postImageBackgroundOpacity) : Color(.systemGray6))
                        .clipShape(RoundedRectangle(cornerRadius: CreatePostViewConstants.postImageCornerRadius))
                        .onTapGesture {
                            presenter.didSelectImage(imageName)
                        }
                }
            }
            .padding()
        }
    }
}

// MARK: - Constants
fileprivate enum CreatePostViewConstants {
    static var navigationTitle: String = "Create A Post",
               cancelButtonTitle: String = "Cancel",
               postButtonTitle: String = "Post",
               userProfileWidth: CGFloat = 40.0,
               userProfileHeight: CGFloat = 40.0,
               postImageHeight: CGFloat = 60.0,
               postImageWidth: CGFloat = 60.0,
               postImageBackgroundOpacity: CGFloat = 0.2,
               postImageCornerRadius: CGFloat = 8.0
}

fileprivate final class MockCreatePostViewInteractorInputImpl: CreatePostViewInteractorInput {
    func createPost(_ post: Post) {}
}

fileprivate final class MockCreatePostViewRouterImpl: CreatePostViewRouter {
    func dismiss(_ action: DismissAction) {}
}

#Preview {
    CreatePostView(presenter: .init(
        user: .init(
            id: UUID().uuidString,
            name: "Test Name",
            username: "testName",
            isVerified: false,
            profileImage: UIImage(named: "user-02")!.jpegData(compressionQuality: 1.0)!
        ),
        router: MockCreatePostViewRouterImpl(),
        interactor: MockCreatePostViewInteractorInputImpl()
    ))
}

