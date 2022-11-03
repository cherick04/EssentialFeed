//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Erick Chacon on 11/2/22.
//

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool
    
    var hasLocation: Bool {
        location != nil
    }
}
