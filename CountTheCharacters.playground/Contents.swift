import Foundation
import XCTest

func counOfTheCharacter(character: Character, in text: String) -> Int {
    return text.filter({ $0 == character }).count
}

class CoutOfTheCharacterTests: XCTestCase {
    func test_CountOfCharacter() {
        XCTAssertEqual(counOfTheCharacter(character: "a", in: "The Rain in Spain"), 2)
        XCTAssertEqual(counOfTheCharacter(character: "i", in: "Mississippi"), 4)
        XCTAssertEqual(counOfTheCharacter(character: "i", in: "Hacking with Swift"), 3)
    }
}

CoutOfTheCharacterTests.defaultTestSuite.run()
