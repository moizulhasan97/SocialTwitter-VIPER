//
//  MockUsers.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 03/04/2025.
//
import SwiftUI

enum MockUsers {
    static let users: [User] = [
        .init(
            id: "1",
            name: "First Name",
            username: "firstName21",
            isVerified: false,
            profileImage: UIImage(named: "user-01")!.jpegData(compressionQuality: 1.0)!
        ),
        .init(
            id: "2",
            name: "Second Name",
            username: "secondName22",
            isVerified: false,
            profileImage: UIImage(named: "user-02")!.jpegData(compressionQuality: 1.0)!
        ),
        .init(
            id: "3",
            name: "Third Name",
            username: "thirdName23",
            isVerified: false,
            profileImage: UIImage(named: "user-03")!.jpegData(compressionQuality: 1.0)!
        )
    ]
}
