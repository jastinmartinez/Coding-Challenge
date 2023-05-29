import Foundation
import XCTest

func threeDifferentLetters(_ inputA: String, _ inputB: String) -> Bool {
    guard inputA.count == inputB.count else {
        return false
    }
    let max = max(inputA.count, inputB.count)
    var index = 0
    var diferences = 0
    let inputA = Array(inputA)
    let inputB = Array(inputB)
    while index < max {
        if inputA[index] != inputB[index] {
            diferences += 1
        }
        guard diferences < 4 else {
            return false
        }
        index += 1
    }
    return true
}

class ThreeDifferentLettersTest: XCTestCase {
    func test_void() {
        XCTAssertTrue(threeDifferentLetters("Clamp","Clamp"))
        XCTAssertTrue(threeDifferentLetters("Clamp","Crams"))
        XCTAssertTrue(threeDifferentLetters("Clamp","Crans"))
        XCTAssertFalse(threeDifferentLetters("Clamp","Clam"))
        XCTAssertFalse(threeDifferentLetters("clamp","mapple"))
    }
}

ThreeDifferentLettersTest.defaultTestSuite.run()





