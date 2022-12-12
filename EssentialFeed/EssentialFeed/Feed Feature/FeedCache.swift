//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Erick Chacon on 11/15/22.
//

import Foundation

public protocol FeedCache {
    func save(_ feed: [FeedImage]) throws
}
