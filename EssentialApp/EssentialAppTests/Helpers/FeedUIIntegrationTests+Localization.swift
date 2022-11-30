//
//  FeedUIIntegrationTests+Localization.swift
//  EssentialFeediOSTests
//
//  Created by Erick Chacon on 11/5/22.
//

import XCTest
import EssentialFeed

extension FeedUIIntegrationTests {
    private class DummyView: ResourceView {
        func display(_ viewModel: Any) {}
    }
    
    var loadError: String {
        LoadResourcePresenter<Any, DummyView>.loadError
    }
    
    var feedTitle: String {
        FeedPresenter.title
    }
}
