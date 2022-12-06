import Foundation
import XCTest

func isPalindrome(simple: String) -> Bool {
    let simple = simple.lowercased()
    return String(simple.reversed()) == simple
}

func isPalindrome(classic: String) -> Bool {
    let classic = classic.lowercased()
    let indeces = classic.indices
    let reversedIndeces = indeces.reversed()
    for (index, reversedIndex) in zip(indeces, reversedIndeces) {
        if classic[index] != classic[reversedIndex] {
            return false
        }
    }
    return true
}

class PalindromeTest: XCTestCase {
    func test_isPalindrome() {
        XCTAssert(isPalindrome(simple: "rotator") == true)
        XCTAssert(isPalindrome(classic: "Rats live on no evil star") == true)
        XCTAssert(isPalindrome(simple: "Never odd or even") == false)
        XCTAssert(isPalindrome(classic: "Hello, word") == false)
    }
}

PalindromeTest.defaultTestSuite.run()
