//
//  FeedImagePresenterTests.swift
//  EssentialFeedTests
//
//  Created by Erick Chacon on 11/9/22.
//

import XCTest

final class FeedImagePresenter {
    init(view: Any) {
        
    }
}

final class FeedImagePresenterTests: XCTestCase {

    func test_init_doesNotSendMessagesToView() {
        let (_, view) = makeSUT()
        
        XCTAssertTrue(view.messages.isEmpty, "Expected no view messages")
    }
    
    // MARK: - Helpers
    
    private func makeSUT(file: StaticString = #filePath, line: UInt = #line) -> (sut: FeedImagePresenter, view: ViewSpy) {
        let view = ViewSpy()
        let sut = FeedImagePresenter(view: view)
        trackForMemoryLeaks(sut, file: file, line: line)
        trackForMemoryLeaks(view, file: file, line: line)
        return (sut, view)
    }
    
    private class ViewSpy {
        let messages = [Any]()
    }
}
