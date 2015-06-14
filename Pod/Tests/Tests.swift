import UIKit
import XCTest

class Tests: XCTestCase {

  func testFetch() {
    var expectation = self.expectationWithDescription("fetch")
    let resource = "https://avatars2.githubusercontent.com/u/57446?v=3&s=460"
    let fido = GoldenRetriever()

    fido.fetch(resource) { data, error in
      XCTAssert(true, "Pass")
      expectation.fulfill()
    }

    self.waitForExpectationsWithTimeout(10.0, handler: nil)
  }
}
