
import Foundation

public final class UserProfileSDK {

    private let apiClient: APIClient

    public init(baseURL: String) {

        guard let url = URL(string: baseURL) else {
            fatalError("Invalid base URL")
        }

        self.apiClient = APIClient(baseURL: url)
    }

    public func fetchUser() async throws -> UserProfile {

        return try await apiClient.get(path: "/user", type: UserProfile.self)
    }
}
    
