//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Erick Chacon on 9/29/22.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
    
    func load(completion: @escaping (Result) -> Void)
}
