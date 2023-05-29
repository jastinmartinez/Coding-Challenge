import Foundation
import XCTest

func RunLenghtEncoding(_ input: String) -> String {
    var result = ""
    var repetead = 1
    var index = 0
    let input = Array(input)
    while index < input.count {
        let isDiff = (index + 1) < input.count && input[index] != input[index + 1]
        index += 1
        if isDiff || index == input.count {
            result.append(String(input[index - 1]) + String(repetead))
            repetead = 1
        } else {
            repetead += 1
        }
    }
    return result
}

class RunLenghtEncodingTest: XCTestCase {
    func test_Void() {
        XCTAssertEqual(RunLenghtEncoding("aabbcc"), "a2b2c2")
        XCTAssertEqual(RunLenghtEncoding("aaabaaabaaa"), "a3b1a3b1a3")
        XCTAssertEqual(RunLenghtEncoding("aaAAaa"), "a2A2a2")
    }
}

RunLenghtEncodingTest.defaultTestSuite.run()
