//
//  APIClient.swift
//  NARUTOAPI
//
//  Created by 井本智博 on 2024/05/26.
//

import Foundation

final class APIClient {

    private var urlSession: URLSession

    init(urlSession: URLSession = .shared) {
        self.urlSession = urlSession
    }

    func getData() async throws -> [NarutoData.Character] {
        let endpoint = "https://narutodb.xyz/api/character"
        guard let url = URL(string: endpoint) else { throw APIClientError.invalidURL }
        let (data, response) = try await urlSession.data(from: url)

        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw APIClientError.invalidResponse
        }
        let decodedData = try JSONDecoder().decode(NarutoDTO.self, from: data)
        return NarutoData(dto: decodedData).characters
    }
}

enum APIClientError: Error {
    case invalidURL, invalidResponse
}
