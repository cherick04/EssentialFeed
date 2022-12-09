//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Erick Chacon on 11/11/22.
//

import Foundation

public protocol FeedImageDataStore {
    typealias InsertionResult = Swift.Result<Void, Error>
    typealias RetrievalResult = Swift.Result<Data?, Error>
    
    func insert(_ data: Data, for url: URL) throws
    func retrieve(dataForURL url: URL) throws -> Data?
    
    @available(*, deprecated)
    func insert(_ data: Data, for url: URL, completion: @escaping (InsertionResult) -> Void)
    
    @available(*, deprecated)
    func retrieve(dataForURL url: URL, completion: @escaping (RetrievalResult) -> Void)
}

public extension FeedImageDataStore {
    func insert(_ data: Data, for url: URL) throws {
        var result: InsertionResult!
        let group = DispatchGroup()
        group.enter()
        insert(data, for: url) {
            result = $0
            group.leave()
        }
        group.wait()
        
        return try result.get()

    }
    
    func retrieve(dataForURL url: URL) throws -> Data? {
        var result: RetrievalResult!
        let group = DispatchGroup()
        group.enter()
        retrieve(dataForURL: url) {
            result = $0
            group.leave()
        }
        group.wait()
        
        return try result.get()
    }
    
    func insert(_ data: Data, for url: URL, completion: @escaping (InsertionResult) -> Void) {}
    func retrieve(dataForURL url: URL, completion: @escaping (RetrievalResult) -> Void) {}
}
