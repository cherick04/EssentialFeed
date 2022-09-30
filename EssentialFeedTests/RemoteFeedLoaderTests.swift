//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Erick Chacon on 9/30/22.
//

import XCTest

class HTTPClient {
    var requestURL: URL?
}

class RemoteFeedLoader {
    
}

class RemoteFeedLoaderTests: XCTestCase {
    
    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClient()
        _ = RemoteFeedLoader()
        
        XCTAssertNil(client.requestURL)
    }
}
