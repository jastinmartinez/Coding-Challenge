import Foundation
import XCTest

func findLongestPrefix(_ input: String) -> String {
    var input = input.components(separatedBy: .whitespacesAndNewlines)
    var index = 0
    var minLenght = input.count
    var valueToCompare: String.SubSequence = .SubSequence()
    var isMinCaptured = false
    var isLessThan: Bool  {
        return index < input.count
    }
    while isLessThan || !isMinCaptured {
        if !isMinCaptured  {
            minLenght = min(minLenght, input[index].count)
            index += 1
            if !isLessThan  {
                valueToCompare = input[index - 1].prefix(minLenght)
                isMinCaptured = true
                index = 0
            }
        }
        if isMinCaptured {
            if input[index].hasPrefix(valueToCompare) {
                index += 1
            } else {
                minLenght -= 1
                index = 0
                valueToCompare = input[index].prefix(minLenght)
            }
        }
    }
    return String(valueToCompare)
}


class FindLongestPrefixTest: XCTestCase {
    func test_findLongestPrefix() {
        XCTAssertEqual(findLongestPrefix("flap flap flap fl"), "fl")
        XCTAssertEqual(findLongestPrefix("swift switch swill swim"), "swi")
    }
}

FindLongestPrefixTest.defaultTestSuite.run()




