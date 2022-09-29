//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Erick Chacon on 9/29/22.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
