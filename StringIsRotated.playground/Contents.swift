import UIKit
import XCTest

func stringIsRotated(_ input: String, _ rotated: String) -> Bool {
    guard input != rotated,
          input.count == rotated.count else {
        return false
    }
    return (input + input).contains(rotated)
}

class StringIsRotatedTest: XCTestCase {
    func test_String_Is_Rotated() {
        XCTAssertTrue(stringIsRotated("abcde", "eabcd"))
        XCTAssertTrue(stringIsRotated("abcde", "cdeab"))
        XCTAssertFalse(stringIsRotated("abcde", "abced"))
        XCTAssertFalse(stringIsRotated("abc", "a"))
    }
}

StringIsRotatedTest.defaultTestSuite.run()
