//
//  LocalUserStorage.swift
//  SocialTwitter-VIPER
//
//  Created by EBA on 03/04/2025.
//

final class LocalUserStorage: UserStorage {
    
    private var users: [User] = []
    
    func getUsers() -> [User] {
        users
    }
}
