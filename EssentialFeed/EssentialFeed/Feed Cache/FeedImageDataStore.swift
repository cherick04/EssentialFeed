//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Erick Chacon on 11/11/22.
//

import Foundation

public protocol FeedImageDataStore {
    func insert(_ data: Data, for url: URL) throws
    func retrieve(dataForURL url: URL) throws -> Data?
}
