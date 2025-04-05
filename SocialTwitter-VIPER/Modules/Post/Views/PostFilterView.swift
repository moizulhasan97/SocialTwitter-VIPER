//
//  PostFilterView.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 03/04/2025.
//

import SwiftUI

struct PostFilterView: View {
    @Binding var selectedFilter: PostFilter
    
    var body: some View {
        //
        Picker("Filter", selection: $selectedFilter) {
            //
            ForEach(PostFilter.allCases, id: \.self) { postFilter in
                //
                Text(postFilter.title).tag(postFilter)
            }
        }
        .pickerStyle(.segmented)
    }
}



