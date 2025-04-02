//
//  User.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 01/04/2025.
//

import SwiftUI

struct User: Identifiable {
    let id: UUID
    let name: String
    let username: String
    let isVerified: Bool
    let profileImage: Image
}
