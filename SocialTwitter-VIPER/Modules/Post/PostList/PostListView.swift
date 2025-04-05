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
            .toolbar {
                //
                ToolbarItem(placement: .primaryAction) {
                    //
                    Button(action: {
                        presenter.didTapCreateNewPost()
                    }) {
                        Image(systemName: "plus")
                    }
                }
            }
        }
        .sheet(isPresented: $presenter.showCreatePostView) {
            CreatePostViewRouterImpl.createCreatePostView(
                user: presenter.selectedUser,
                storage: presenter.postStorage
            )
        }
        .onAppear {
            presenter.onAppear()
        }
    }
    
    //Filters
    private var filterSegmentedControl: some View {
        PostFilterView(selectedFilter: $presenter.selectedFilter)
    }
    
    // User dropdown
    private var userDropdown: some View {
        UserDropDownView(selectedUser: $presenter.selectedUser, users: presenter.users)
    }
}

fileprivate class PreviewPostListRouter: PostListRouter {}
fileprivate class PreviewPostListInteractorInput: PostListInteractorInput {
    var storage: any PostStorage {LocalPostStorage()}
    func fetchPosts() {}
    func fetchUsers() {}
}
#Preview {
    PostListView(presenter: .init(router: PreviewPostListRouter(), interactor: PreviewPostListInteractorInput()))
}
