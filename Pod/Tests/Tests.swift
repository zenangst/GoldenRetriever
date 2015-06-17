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

  func testFetchWithCustomHeaders() {
    var expectation = self.expectationWithDescription("fetch")
    
    let resource = "https://avatars2.githubusercontent.com/u/57446?v=3&s=460"
    let lassie = GoldenRetriever(headers: ["ETag" : "W/\"f9a81a48030e8101106885bb393cc616\""])

    lassie.fetch(resource) { data, response, error in
      XCTAssertEqual((response as! NSHTTPURLResponse).statusCode, 200)
      expectation.fulfill()
    }

    self.waitForExpectationsWithTimeout(10.0, handler: nil)
  }
}
