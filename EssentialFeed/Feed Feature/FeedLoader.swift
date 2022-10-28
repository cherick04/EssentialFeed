//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Erick Chacon on 9/29/22.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
