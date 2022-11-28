//
//  FeedLocalizationTests.swift
//  EssentialFeediOSTests
//
//  Created by Erick Chacon on 11/5/22.
//

import XCTest
import EssentialFeed

final class FeedLocalizationTests: XCTestCase {
    
    func test_localizedString_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "Feed"
        let bundle = Bundle(for: FeedPresenter.self)
        
        assertLocalizedKeysAndValuesExist(in: bundle, table)
    }
}
