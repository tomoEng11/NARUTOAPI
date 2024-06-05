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

        //        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
        //            throw APIClientError.invalidResponse
        //        }
        let decodedData = try JSONDecoder().decode(NarutoDTO.self, from: data)
        return NarutoData(dto: decodedData).characters
    }


    // callbackで実装
//    func getData(completion: @escaping (Result<[NarutoData.Character], APIClientError>) -> Void) {
//        let endpoint = "https://narutodb.xyz/api/character"
//
//        guard let url = URL(string: endpoint) else {
//            completion(.failure(APIClientError.invalidURL))
//            return
//        }
//
//        let task = urlSession.dataTask(with: url) { data, response, error in
//
//            guard error == nil else {
//                completion(.failure(.networkError))
//                return
//            }
//
//            guard  let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
//                completion(.failure(APIClientError.invalidResponse))
//                return
//            }
//
//            if let safeData = data {
//                do {
//                    let decodedDTO = try JSONDecoder().decode(NarutoDTO.self, from: safeData)
//                    let characters = NarutoData(dto: decodedDTO).characters
//                    print(characters)
//                    completion(.success(characters))
//                } catch {
//                    completion(.failure(APIClientError.decodingError))
//                }
//            }
//        }
//        task.resume()
//    }
}

enum APIClientError: Error {
    case invalidURL, invalidResponse, networkError, decodingError, noData
}
