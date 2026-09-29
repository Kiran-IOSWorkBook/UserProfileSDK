//
//  SDKError.swift
//  UserProfileSDK
//
//  Created by Kiran on 28/09/26.
//

public enum SDKError: Error {
    
    case invalidURL
    case invalidResponse
    case unauthorized
    case serverError
    case decodingFailed
}
