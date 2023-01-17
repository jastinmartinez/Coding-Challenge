import UIKit
import XCTest

func condenseWhitespace(value: String) -> String {
    var arrayOfCharacter = [Character]()
    var isWhiteSpace = false
    for item in value {
        if item.isWhitespace {
            guard !isWhiteSpace else {
                continue
            }
            isWhiteSpace = true
        } else  {
            isWhiteSpace = false
        }
        arrayOfCharacter.append(item)
    }
    return String(arrayOfCharacter)
}

class CondenseWhitespaceTest: XCTestCase {
    func test_condenseWhitespace() {
        XCTAssertEqual(condenseWhitespace(value: "abc"), "abc")
        XCTAssertEqual(condenseWhitespace(value: " ab c "), " ab c ")
        XCTAssertEqual(condenseWhitespace(value: "a  b c"), "a b c")
        XCTAssertEqual(condenseWhitespace(value: " a  b  c  "), " a b c ")
        XCTAssertEqual(condenseWhitespace(value: "a b  c"), "a b c")
        XCTAssertEqual(condenseWhitespace(value: "abc  "), "abc ")
    }
}

CondenseWhitespaceTest.defaultTestSuite.run()
