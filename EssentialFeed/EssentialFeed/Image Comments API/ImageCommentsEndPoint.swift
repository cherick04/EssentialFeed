//
//  ImageCommentsEndPoint.swift
//  EssentialFeed
//
//  Created by Erick Chacon on 12/1/22.
//

import Foundation

public enum ImageCommentsEndPoint {
    case get(UUID)
//    case post(id: UUID, comment: ImageComment)
    
    public func url(baseURL: URL) -> URL {
        switch self {
        case let .get(id):
            return baseURL.appendingPathComponent("/v1/image/\(id)/comments")
        }
    }
}
