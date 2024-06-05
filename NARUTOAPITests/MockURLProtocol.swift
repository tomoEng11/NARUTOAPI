//
//  MockURLProtocol.swift
//  NARUTOAPITests
//
//  Created by 井本智博 on 2024/06/02.
//

import Foundation

class MockURLProtocol: URLProtocol {

    static var stubResponseData: Data?

    override class func canInit(with request: URLRequest) -> Bool {
        true
    }

    override class func canonicalRequest(for request: URLRequest) -> URLRequest {
        return request
    }

    override func startLoading() {

        self.client?.urlProtocol(self, didLoad: MockURLProtocol.stubResponseData ?? Data())
        self.client?.urlProtocolDidFinishLoading(self)
    }

    override func stopLoading() {}
}
