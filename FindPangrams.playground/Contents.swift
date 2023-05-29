import Foundation
import XCTest

func findPangrams(_ input: String) -> Bool {
    return Set(input
        .lowercased()
        .filter({ $0.isLetter }))
    .count == 26
}

class FindPangramsTest: XCTestCase {
    func test_void() {
        XCTAssertTrue(findPangrams("The quick brown fox jumps over the lazy dog"))
        XCTAssertFalse(findPangrams("The quick brown fox jumped over the lazy dog"))
    }
}

FindPangramsTest.defaultTestSuite.run()
