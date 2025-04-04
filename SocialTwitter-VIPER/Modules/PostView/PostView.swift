//
//  PostView.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 01/04/2025.
//

import SwiftUI

struct PostView: View {
    let post: Post
    
    var body: some View {
        //
        HStack (alignment: .top) {
            //
            userProfileImage
            //
            VStack (
                alignment: .leading,
                spacing: PostViewConstants.bodyVStackSpacing
            ) {
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
                    .padding(
                        .top,
                        PostViewConstants.activityButtonsTopPadding
                    )
            }
        }
        .padding(.horizontal)
    }
    
    private var userProfileImage: some View {
        Image(uiImage: .init(data: post.user.profileImage)!)
            .resizable()
            .roundedImage(
                width: PostViewConstants.userImageWidth,
                height: PostViewConstants.userImageHeight
            )
    }
    
    private var postAuthorDetails: some View {
        HStack {
            //
            Text(post.user.name)
                .lineLimit(PostViewConstants.lineLimit)
                .minimumScaleFactor(PostViewConstants.lineScaleFactor)
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
                .lineLimit(PostViewConstants.lineLimit)
                .minimumScaleFactor(PostViewConstants.lineScaleFactor)
                .font(.caption)
                .foregroundStyle(Color.lightGray)
        }
    }
    
    private var postImage: some View {
        Image(uiImage: .init(data: post.image!)!)
            .resizable()
            .frame(
                width: PostViewConstants.postImageWidth,
                height: PostViewConstants.postImageHeight
            )
            .clipShape(RoundedRectangle(cornerRadius: PostViewConstants.postImageCornerRadius))
            .padding(
                .top,
                PostViewConstants.postImageTopPadding
            )
    }
    
    private var postDescription: some View {
        Text(post.description)
            .font(.footnote)
            .foregroundStyle(.white)
    }
    
    private var activityButton: some View {
        HStack (spacing: PostViewConstants.activityButtonInterItemSpacing) {
            ForEach(ActivityButton.allCases, id: \.self) { button in
                ActivityButtonView(button: button, action: {})
            }
        }
    }
}

//MARK: - Constants
fileprivate enum PostViewConstants {
    static var userImageHeight: CGFloat = 40,
               userImageWidth: CGFloat = 40,
               activityButtonInterItemSpacing: CGFloat = 50.0,
               activityButtonsTopPadding: CGFloat = 5.0,
               postImageHeight: CGFloat = 180,
               postImageWidth: CGFloat = 250,
               postImageCornerRadius: CGFloat = 10.0,
               postImageTopPadding: CGFloat = 5.0,
               lineLimit: Int = 1,
               lineScaleFactor: CGFloat = 0.5,
               bodyVStackSpacing: CGFloat = 0.0
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
            profileImage: UIImage(named: "user-01")!.jpegData(compressionQuality: 1.0)!
        ),
        image: UIImage(named: "post-01")!.jpegData(compressionQuality: 1.0),
        description: "some long text...some long text...some long text...some long text...some long text...some long text...some long text...some long text...some long text...some long text...some long text...some long text...some long text...some long text...",
        time: .init()
    ))
    .background(.blue)
}



