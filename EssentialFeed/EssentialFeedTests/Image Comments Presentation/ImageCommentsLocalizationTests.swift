//
//  ImageCommentsLocalizationTests.swift
//  EssentialFeedTests
//
//  Created by Erick Chacon on 11/28/22.
//

import XCTest
import EssentialFeed

final class ImageCommentsLocalizationTests: XCTestCase {

    func test_localizedString_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "ImageComments"
        let bundle = Bundle(for: ImageCommentsPresenter.self)
        
        assertLocalizedKeysAndValuesExist(in: bundle, table)
    }
}
