//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Erick Chacon on 9/29/22.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
