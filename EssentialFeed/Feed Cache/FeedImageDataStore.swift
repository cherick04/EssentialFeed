//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Erick Chacon on 11/11/22.
//

import Foundation

public protocol FeedImageDataStore {
    typealias Result = Swift.Result<Data?, Error>
    
    func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
}
