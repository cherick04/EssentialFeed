//
//  SceneDelegateTests.swift
//  EssentialAppTests
//
//  Created by Erick Chacon on 11/17/22.
//

import XCTest
import EssentialFeediOS
@testable import EssentialApp

final class SceneDelegateTests: XCTestCase {

    func test_sceneWillConnectToSession_configuresRootViewController() {
        let sut = SceneDelegate()
        sut.window = UIWindow()
        
        sut.configureWindow()
        
        let root = sut.window?.rootViewController
        let rootNavigation = root as? UINavigationController
        let topController = rootNavigation?.topViewController
        
        XCTAssertNotNil(rootNavigation, "Expected a Navigation Controller as a root, got \(String(describing: root)) instead")
        XCTAssertTrue(topController is FeedViewController, "Expected a feed controller as a top view controller, got \(String(describing: topController)) instead")
    }
}