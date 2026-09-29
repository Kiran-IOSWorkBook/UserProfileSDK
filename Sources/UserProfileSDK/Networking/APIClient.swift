//
//  APIClient.swift
//  UserProfileSDK
//
//  Created by Kiran on 28/09/26.
//

import Foundation

final class APIClient {
    
    private let baseURL: URL
    
    init(baseURL: URL) {
        self.baseURL = baseURL
    }
    
    func get<T: Decodable>(path: String, type: T.Type) async throws -> T {

          guard let url = URL(string: path, relativeTo: baseURL) else {
              throw SDKError.invalidURL
          }

          let (data, response) = try await URLSession.shared.data(from: url)

          guard let httpResponse = response as? HTTPURLResponse else {
              throw SDKError.invalidResponse
          }

          guard 200..<300 ~= httpResponse.statusCode else {

              if httpResponse.statusCode == 401 {
                  throw SDKError.unauthorized
              }

              throw SDKError.serverError
          }

          do {
              return try JSONDecoder().decode(T.self, from: data)
          } catch {
              throw SDKError.decodingFailed
          }
      }
}
