//
//  UserProfileTests.swift
//  UserProfileSDK
//
//  Created by Kiran on 29/09/26.
//

import Testing
@testable import UserProfileSDK

struct UserProfileTests {

    @Test
    func userProfileCanBeCreated() {

        let user = UserProfile(
            id: 1,
            name: "Kiran",
            email: "kiran@example.com"
        )

        #expect(user.id == 1)
        #expect(user.name == "Kiran")
        #expect(user.email == "kiran@example.com")
    }
}
