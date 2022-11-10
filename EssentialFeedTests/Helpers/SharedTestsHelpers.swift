//
//  SharedTestsHelpers.swift
//  EssentialFeedTests
//
//  Created by Erick Chacon on 10/21/22.
//

import Foundation

func anyURL() -> URL {
    URL(string: "https://any-url.com")!
}

func anyNSError() -> NSError {
    NSError(domain: "any error", code: 0)
}

func anyData() -> Data {
    Data("any data".utf8)
}
