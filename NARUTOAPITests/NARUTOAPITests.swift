//
//  NARUTOAPITests.swift
//  NARUTOAPITests
//
//  Created by 井本智博 on 2024/05/26.
//

import XCTest
@testable import NARUTOAPI

final class NARUTOAPITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

//    func testAPIClient_WhenValidResponseProvided_ShouldReturnTrue() {
//        // Arrange
//        let jsonData = """
//        {
//            "characters": [
//                {
//                    "name": "🥺"
//                }
//            ],
//            "currentPage": 1,
//            "pageSize": 10,
//            "totalCharacters": 100
//        }
//        """.data(using: .utf8)!
//
//        MockURLProtocol.stubResponseData = jsonData
//        let config = URLSessionConfiguration.ephemeral
//        config.protocolClasses = [MockURLProtocol.self]
//        let session = URLSession(configuration: config)
//
//
//        let sut = APIClient(urlSession: session)
//        let expectation = self.expectation(description: "does not return successful response")
//
//        // Act
//        sut.getData { result in
//            switch result {
//            case .success(let result):
//                XCTAssertEqual(result.first!.name, "🥺")
//                expectation.fulfill()
//            case .failure(let error):
//                print(error)
//            }
//        }
//        self.wait(for: [expectation], timeout: 5)
//    }

    func testAPIClient_WhenValidResponseProvided_ShouldReturnTrue() {
        let sut = APIClient(urlSession: .shared)
        Task {
            let result = try await sut.getData()
            XCTAssertEqual(result.first?.name, "Zero-Tails")
        }
    }

//    func testAPIClient_WhenValidResponseProvided_ShouldReturnTrue() {
//        let jsonData = """
//                {
//                    "characters": [
//                        {
//                            "name": "🥺"
//                        }
//                    ],
//                    "currentPage": 1,
//                    "pageSize": 10,
//                    "totalCharacters": 100
//                }
//        """.data(using: .utf8)!
//
//        MockURLProtocol.stubResponseData = jsonData
//        let config = URLSessionConfiguration.ephemeral
//        config.protocolClasses = [MockURLProtocol.self]
//        let session = URLSession(configuration: config)
//
//        let sut = APIClient(urlSession: session)
//        Task {
//            let result = try await sut.getData()
//            XCTAssertEqual(result.first!.name, "🥺")
//        }
//    }

}

