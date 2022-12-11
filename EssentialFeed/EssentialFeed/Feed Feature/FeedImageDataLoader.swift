//
//  FeedImageDataLoader.swift
//  EssentialFeediOS
//
//  Created by Erick Chacon on 11/1/22.
//

import Foundation

public protocol FeedImageDataLoader {
    func loadImageData(from url: URL) throws -> Data
}
