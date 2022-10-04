//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Erick Chacon on 9/29/22.
//

import Foundation

public enum LoadFeedResult{
    case success([FeedItem])
    case failure(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
