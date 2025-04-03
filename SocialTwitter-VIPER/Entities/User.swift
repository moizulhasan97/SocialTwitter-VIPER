//
//  User.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 01/04/2025.
//

import Foundation

struct User: Identifiable, Hashable {
    let id: String
    let name: String
    let username: String
    let isVerified: Bool
    let profileImage: Data
}
