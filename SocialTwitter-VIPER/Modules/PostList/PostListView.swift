//
//  PostListView.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 03/04/2025.
//

import SwiftUI

struct PostListView: View {
    @ObservedObject var presenter: PostListViewPresenterImpl
    
    init(presenter: PostListViewPresenterImpl) {
        self.presenter = presenter
    }
    
    var body: some View {
        NavigationStack {
            //
            userDropdown
            //
            filterSegmentedControl
            //
            ScrollView {
                //
                LazyVStack {
                    //
                    ForEach(presenter.posts.indices, id: \.self) { index in
                        //
                        PostView(post: presenter.posts[index])
                        //
                        if index != presenter.posts.count - 1 {
                            //
                            Divider()
                        }
                        
                    }
                }
            }
            .background(Color.blueThemeTwitter)
        }
        .onAppear {
            presenter.onAppear()
        }
    }
    
    //Filters
    private var filterSegmentedControl: some View {
        //
        Picker("Filter", selection: $presenter.selectedFilter) {
            //
            ForEach(PostFilter.allCases, id: \.self) { postFilter in
                //
                Text(postFilter.title).tag(postFilter)
            }
        }
        .pickerStyle(.segmented)
    }
    
    // User dropdown
    private var userDropdown: some View {
        //
        Picker("Users", selection: $presenter.selectedUser) {
            //
            ForEach(presenter.users, id: \.self) { user in
                //
                Text(user.name).tag(user)
            }
        }
    }
}

fileprivate class PreviewPostListRouter: PostListRouter {
    func navigateToCreatePost() {}
}
fileprivate class PreviewPostListInteractorInput: PostListInteractorInput {
    func fetchPosts() {}
    func fetchUsers() {}
}
#Preview {
    PostListView(presenter: .init(router: PreviewPostListRouter(), interactor: PreviewPostListInteractorInput()))
}
