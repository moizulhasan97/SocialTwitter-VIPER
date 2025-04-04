//
//  MockPosts.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 03/04/2025.
//
import SwiftUI

enum MockPosts {
    static let posts: [Post] = [
        .init(
            id: .init(),
            user: MockUsers.users[0],
            image: UIImage(named: "post-01")!.jpegData(compressionQuality: 1.0),
              description: "This is a description for first post. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen",
            time: .now
             ),
        .init(
            id: .init(),
            user:  MockUsers.users[0],
            image: UIImage(named: "post-02")!.jpegData(compressionQuality: 1.0),
              description: "This is a description for second post. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen",
            time: Calendar.current.date(byAdding: .minute, value: 10, to: .now)!
             ),
        .init(
            id: .init(),
            user: MockUsers.users[1],
            image: UIImage(named: "post-05")!.jpegData(compressionQuality: 1.0),
              description: "This is a description for first post. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen",
            time: .now
             ),
        .init(
            id: .init(),
            user:  MockUsers.users[1],
            image: UIImage(named: "post-06")!.jpegData(compressionQuality: 1.0),
              description: "This is a description for second post. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen",
            time: Calendar.current.date(byAdding: .minute, value: 10, to: .now)!
             ),
        .init(
            id: .init(),
            user: MockUsers.users[2],
            image: UIImage(named: "post-03")!.jpegData(compressionQuality: 1.0),
              description: "This is a description for first post. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen",
            time: .now
             ),
        .init(
            id: .init(),
            user:  MockUsers.users[2],
            image: UIImage(named: "post-04")!.jpegData(compressionQuality: 1.0),
              description: "This is a description for second post. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen",
            time: Calendar.current.date(byAdding: .minute, value: 10, to: .now)!
             ),
    ]
}
