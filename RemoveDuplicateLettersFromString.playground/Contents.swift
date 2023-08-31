import Foundation
import XCTest

func removeDuplicateFrom(text: String) -> String {
     return text.reduce(into: String()) { partialResult, character in
        if !partialResult.contains(character) {
            partialResult.append(character)
        }
    }
}

func removeDuplicateFrom(anotherText: String) -> String {
    var setOfCharacter = [Character]()
    for letter in anotherText {
        if !setOfCharacter.contains(letter) {
            setOfCharacter.append(letter)
        }
    }
    return String(setOfCharacter)
}

class RemoveDuplicateFromTest: XCTestCase {
    func test_condenseWhitespace() {
        XCTAssertEqual(removeDuplicateFrom(text: "Hello"), "Helo")
        XCTAssertEqual(removeDuplicateFrom(anotherText: "Hello"), "Helo")
        XCTAssertEqual(removeDuplicateFrom(text: "Misiisisipi"), "Misp")
        XCTAssertEqual(removeDuplicateFrom(anotherText: "Misiisisipi"), "Misp")
    }
}

RemoveDuplicateFromTest.defaultTestSuite.run()
