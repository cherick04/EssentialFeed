//
//  FeedUIIntegrationTests+Localization.swift
//  EssentialFeediOSTests
//
//  Created by Erick Chacon on 11/5/22.
//

import XCTest
import EssentialFeediOS

extension FeedUIIntegrationTests {
    func localized(_ key: String, file: StaticString = #filePath, line: UInt = #line) -> String {
        let table = "Feed"
        let bundle = Bundle(for: FeedViewController.self)
        let value = bundle.localizedString(forKey: key, value: nil, table: table)
        if value == key {
            XCTFail("Missing localized string for key: \(key) in table: \(table)")
        }
        
        return value
    }
}
