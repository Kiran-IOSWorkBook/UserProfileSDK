//
//  File.swift
//  UserProfileSDK
//
//  Created by Kiran on 28/09/26.
//

import Foundation

public struct UserProfile: Codable {
    
    public let id: Int
    public let name: String
    public let email: String
    
    public init(id: Int, name: String, email: String) {
        self.id = id
        self.name = name
        self.email = email
    }
}
