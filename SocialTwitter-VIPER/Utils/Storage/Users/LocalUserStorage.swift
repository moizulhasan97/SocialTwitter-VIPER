//
//  LocalUserStorage.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 03/04/2025.
//

final class LocalUserStorage: UserStorage {
    
    private var users: [User] = MockUsers.users
    
    func getUsers() -> [User] {
        users
    }
}
