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
    let post: Post
    
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
        Image(uiImage: .init(data: post.user.profileImage)!)
            .resizable()
            .roundedImage(width: PostViewConstants.userImageWidth, height: PostViewConstants.userImageHeight)
    }
    
    private var postAuthorDetails: some View {
        HStack {
            //
            Text(post.user.name)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
                .font(.headline)
                .foregroundStyle(.white)
                .truncationMode(.tail)
            //
            Text("\(post.user.username)")
                .font(.caption)
                .bold()
                .foregroundStyle(Color.lightGray)
            //
            Spacer()
            //
            Text(post.time.formatted())
                .lineLimit(1)
                .minimumScaleFactor(0.5)
                .font(.caption)
                .foregroundStyle(Color.lightGray)
        }
    }
    
    private var postImage: some View {
        Image(uiImage: .init(data: post.image!)!)
            .resizable()
            .frame(width: 250, height: 180)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.top, 5)
    }
    
    private var postDescription: some View {
        Text(post.description)
            .font(.footnote)
            .foregroundStyle(.white)
    }
    
    private var activityButton: some View {
        HStack (spacing: 50) {
            commentButton
            viewButton
            likesButton
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
                Text("\(post.views)")
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
                Text("\(post.views)")
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
                Text("\(post.likes)")
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
            name: "first ddd name",
            username: "username",
            isVerified: false,
            profileImage: UIImage(named: "profileImage-1")!.jpegData(compressionQuality: 1.0)!
        ),
        image: UIImage(named: "postImage")!.jpegData(compressionQuality: 1.0),
        description: "some long text...some long text...some long text...some long text...some long text...some long text...some long text...some long text...some long text...some long text...some long text...some long text...some long text...some long text...",
        time: .init(),
        views: 100,
        likes: 100
    ))
    .background(.blue)
}



