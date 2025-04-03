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
            time: .now,
              views: 10,
              likes: 10
             ),
        .init(
            id: .init(),
            user:  MockUsers.users[0],
            image: UIImage(named: "post-02")!.jpegData(compressionQuality: 1.0),
              description: "This is a description for second post. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen",
            time: Calendar.current.date(byAdding: .minute, value: 10, to: .now)!,
              views: 20,
              likes: 20
             ),
        .init(
            id: .init(),
            user: MockUsers.users[0],
            image: UIImage(named: "post-03")!.jpegData(compressionQuality: 1.0),
              description: "This is a description for third post. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen",
            time: .now,
              views: 30,
              likes: 30
             ),
        .init(
            id: .init(),
            user:  MockUsers.users[0],
            image: UIImage(named: "post-04")!.jpegData(compressionQuality: 1.0),
              description: "This is a description for fourth post. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen",
            time: Calendar.current.date(byAdding: .minute, value: 10, to: .now)!,
              views: 40,
              likes: 40
             ),
        .init(
            id: .init(),
            user: MockUsers.users[1],
            image: UIImage(named: "post-05")!.jpegData(compressionQuality: 1.0),
              description: "This is a description for first post. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen",
            time: .now,
              views: 50,
              likes: 50
             ),
        .init(
            id: .init(),
            user:  MockUsers.users[1],
            image: UIImage(named: "post-06")!.jpegData(compressionQuality: 1.0),
              description: "This is a description for second post. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen",
            time: Calendar.current.date(byAdding: .minute, value: 10, to: .now)!,
              views: 60,
              likes: 60
             ),
        .init(
            id: .init(),
            user: MockUsers.users[1],
            image: UIImage(named: "post-07")!.jpegData(compressionQuality: 1.0),
              description: "This is a description for third post. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen",
            time: .now,
              views: 70,
              likes: 70
             ),
        .init(
            id: .init(),
            user:  MockUsers.users[1],
            image: UIImage(named: "post-08")!.jpegData(compressionQuality: 1.0),
              description: "This is a description for fourth post. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen",
            time: Calendar.current.date(byAdding: .minute, value: 10, to: .now)!,
              views: 80,
              likes: 80
             ),
        .init(
            id: .init(),
            user: MockUsers.users[2],
            image: UIImage(named: "post-09")!.jpegData(compressionQuality: 1.0),
              description: "This is a description for first post. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen",
            time: .now,
              views: 90,
              likes: 90
             ),
        .init(
            id: .init(),
            user:  MockUsers.users[2],
            image: UIImage(named: "post-10")!.jpegData(compressionQuality: 1.0),
              description: "This is a description for second post. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen",
            time: Calendar.current.date(byAdding: .minute, value: 10, to: .now)!,
              views: 100,
              likes: 100
             ),
        .init(
            id: .init(),
            user: MockUsers.users[2],
            image: UIImage(named: "post-11")!.jpegData(compressionQuality: 1.0),
              description: "This is a description for third post. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen",
            time: .now,
              views: 110,
              likes: 110
             ),
        .init(
            id: .init(),
            user:  MockUsers.users[2],
            image: UIImage(named: "post-12")!.jpegData(compressionQuality: 1.0),
              description: "This is a description for fourth post. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen",
            time: Calendar.current.date(byAdding: .minute, value: 10, to: .now)!,
              views: 120,
              likes: 120
             ),
    ]
}
