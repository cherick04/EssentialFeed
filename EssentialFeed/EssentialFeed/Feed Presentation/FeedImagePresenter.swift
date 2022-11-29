//
//  FeedImagePresenter.swift
//  EssentialFeed
//
//  Created by Erick Chacon on 11/9/22.
//

import Foundation

public final class FeedImagePresenter {
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(
            description: image.description,
            location: image.location)
    }
}
