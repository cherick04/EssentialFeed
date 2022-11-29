//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Erick Chacon on 11/9/22.
//

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?
    
    public var hasLocation: Bool {
        location != nil
    }
}
