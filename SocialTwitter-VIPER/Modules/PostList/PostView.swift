//
//  PostView.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 01/04/2025.
//

import SwiftUI

fileprivate enum ActivityButton: CaseIterable {
    case comments, views, likes, share
    
    var image: Image {
        switch self {
        case .comments:
            Image(systemName: "bubble.right.fill")
            
        case .views:
            Image(systemName: "eye.fill")
            
        case .likes:
            Image(systemName: "hand.thumbsup.fill")
            
        case .share:
            Image(systemName: "arrowshape.turn.up.right.fill")
        }
    }
}

struct PostView: View {
    @ObservedObject var post: Post
    
    var body: some View {
        //
        HStack (alignment: .top) {
            //
            userProfileImage
            //
            VStack (alignment: .leading, spacing: 0) {
                //
                postAuthorDetails
                //
                postDescription
                //
                if post.image != nil {
                    postImage
                }
                //
                activityButton
                    .padding(.top, PostViewConstants.activityButtonsTopPadding)
            }
        }
        .padding(.horizontal)
    }
    
    private var userProfileImage: some View {
        post.user.profileImage
            .resizable()
            .roundedImage(width: PostViewConstants.userImageWidth, height: PostViewConstants.userImageHeight)
    }
    
    private var postAuthorDetails: some View {
        HStack {
            //
            Text(post.user.name)
                .font(.headline)
                .foregroundStyle(.white)
            //
            Text("\(post.user.username)")
                .font(.caption)
                .bold()
                .foregroundStyle(.gray)
            //
            Spacer()
            //
            Text(post.time.formatted())
                .font(.caption)
                .foregroundStyle(.gray)
        }
    }
    
    private var postImage: some View {
        post.image!
            .resizable()
            .frame(width: 250, height: 180)
            .padding(.top, 5)
    }
    
    private var postDescription: some View {
        Text(post.description)
            .font(.footnote)
            .foregroundStyle(.white)
    }
    
    private var activityButton: some View {
        HStack {
            commentButton
            Spacer()
            viewButton
            Spacer()
            likesButton
            Spacer()
            shareButton
        }
    }
    
    private var commentButton: some View {
        Button(action: {
            print("Comment pressed")
        }) {
            HStack (
                alignment: .center,
                spacing: PostViewConstants.activityButtonImageTextHorizontalSpacing
            ) {
                //
                ActivityButton.comments.image
                    .resizable()
                    .frame(
                        width: PostViewConstants.activityButtonWidth,
                        height: PostViewConstants.activityButtonHeight
                    )
                    .foregroundStyle(.white)
                //
                Text("0")
                    .font(.caption)
                    .foregroundStyle(.white)
            }
        }
    }
    
    private var viewButton: some View {
        Button(action: {
            print("view pressed")
        }) {
            HStack (
                alignment: .center,
                spacing: PostViewConstants.activityButtonImageTextHorizontalSpacing
            ) {
                //
                ActivityButton.views.image
                    .resizable()
                    .frame(
                        width: PostViewConstants.activityButtonWidth,
                        height: PostViewConstants.activityButtonHeight
                    )
                    .foregroundStyle(.white)
                //
                Text("0")
                    .font(.caption)
                    .foregroundStyle(.white)
            }
        }
    }
    
    private var likesButton: some View {
        Button(action: {
            print("likes pressed")
        }) {
            HStack (
                alignment: .center,
                spacing: PostViewConstants.activityButtonImageTextHorizontalSpacing
            ) {
                //
                ActivityButton.likes.image
                    .resizable()
                    .frame(
                        width: PostViewConstants.activityButtonWidth,
                        height: PostViewConstants.activityButtonHeight
                    )
                    .foregroundStyle(.white)
                //
                Text("0")
                    .font(.caption)
                    .foregroundStyle(.white)
            }
        }
    }
    
    private var shareButton: some View {
        Button(action: {
            print("share pressed")
        }) {
            HStack (
                alignment: .center,
                spacing: PostViewConstants.activityButtonImageTextHorizontalSpacing
            ) {
                //
                ActivityButton.share.image
                    .resizable()
                    .frame(
                        width: PostViewConstants.activityButtonWidth,
                        height: PostViewConstants.activityButtonHeight
                    )
                    .foregroundStyle(.white)
            }
        }
    }
}

//MARK: - Constants
fileprivate enum PostViewConstants {
    static var userImageHeight: CGFloat = 40,
               userImageWidth: CGFloat = 40,
               activityButtonsTopPadding: CGFloat = 5.0,
               activityButtonHeight: CGFloat = 15.0,
               activityButtonWidth: CGFloat = 15.0,
               activityButtonImageTextHorizontalSpacing: CGFloat = 2.0
}

//MARK: - Preview
#Preview {
    PostView(post: .init(
        id: .init(),
        user: .init(
            id: .init(),
            name: "name",
            username: "username",
            isVerified: false,
            profileImage: Image(.profileImage1)
        ),
        image: Image(.post),
        description: "some long text...some long text...some long text...some long text...some long text...some long text...some long text...some long text...some long text...some long text...some long text...some long text...some long text...some long text...",
        time: .init(),
        views: 0,
        likes: 0
    ))
    .background(.blue)
}



