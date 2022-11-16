//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Erick Chacon on 11/15/22.
//

import Foundation

public protocol FeedCache {
    typealias SaveResult = Result<Void, Error>

    func save(_ feed: [FeedImage], completion: @escaping (SaveResult) -> Void)
}
