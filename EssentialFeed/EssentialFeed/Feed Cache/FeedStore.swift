//
//  FeedStore.swift
//  EssentialFeed
//
//  Created by Erick Chacon on 10/19/22.
//

import Foundation

public typealias CachedFeed = (feed: [LocalFeedImage], timestamp: Date)

public protocol FeedStore {
    typealias DeletionResult = Result<Void, Error>
    typealias DeletionCompletion = (DeletionResult) -> Void
    
    typealias InsertionResult = Result<Void, Error>
    typealias InsertionCompletion = (InsertionResult) -> Void
    
    typealias RetrievalResult = Result<CachedFeed?, Error>
    typealias RetrievalCompletion = (RetrievalResult) -> Void
    
    /// The completion handler can be invoked in any thread.
    /// Clients are responsible to dispatch to appropriate threads, if needed.
    @available(*, deprecated)
    func deleteCachedFeed(completion: @escaping DeletionCompletion)
    
    /// The completion handler can be invoked in any thread.
    /// Clients are responsible to dispatch to appropriate threads, if needed.
    @available(*, deprecated)
    func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping InsertionCompletion)
    
    /// The completion handler can be invoked in any thread.
    /// Clients are responsible to dispatch to appropriate threads, if needed.
    @available(*, deprecated)
    func retrieve(completion: @escaping RetrievalCompletion)
    
    func deleteCachedFeed() throws
    func insert(_ feed: [LocalFeedImage], timestamp: Date) throws
    func retrieve() throws -> CachedFeed?
}

public extension FeedStore {
    func deleteCachedFeed() throws {
        var result: DeletionResult!
        let group = DispatchGroup()
        group.enter()
        
        deleteCachedFeed() {
            result = $0
            group.leave()
        }
        group.wait()
        
        return try result.get()
    }
    
    func insert(_ feed: [LocalFeedImage], timestamp: Date) throws {
        var result: InsertionResult!
        let group = DispatchGroup()
        group.enter()
        
        insert(feed, timestamp: timestamp) {
            result = $0
            group.leave()
        }
        group.wait()
        
        return try result.get()
    }
    
    func retrieve() throws -> CachedFeed? {
        var result: RetrievalResult!
        let group = DispatchGroup()
        group.enter()
        
        retrieve {
            result = $0
            group.leave()
        }
        group.wait()
        
        return try result.get()
    }
    
    func deleteCachedFeed(completion: @escaping DeletionCompletion) {}
    func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping InsertionCompletion) {}
    func retrieve(completion: @escaping RetrievalCompletion) {}

}
