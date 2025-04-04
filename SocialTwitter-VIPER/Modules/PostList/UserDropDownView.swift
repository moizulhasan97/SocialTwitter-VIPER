//
//  UserDropDownView.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 03/04/2025.
//

import SwiftUI

struct UserDropDownView: View {
    @Binding var selectedUser: User
    let users: [User]
    
    var body: some View {
        //
        Picker("Users", selection: $selectedUser) {
            //
            ForEach(users, id: \.self) { user in
                //
                Text(user.name).tag(user)
            }
        }
    }
}
