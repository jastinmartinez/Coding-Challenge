import Foundation
import XCTest

func areTheLettersUnique(_ letters: String) -> Bool {
    var characterDictionary = [Character: Bool]()
    for character in letters {
        if let isUnique = characterDictionary[character] {
            return !isUnique
        } else {
            characterDictionary[character] = true
        }
    }
    return true
}

class AreTheLetterUniqueTests: XCTestCase {
    func test_IsUnique() {
        assert(areTheLettersUnique("No duplicates") == true, "failed 1 tets")
        assert(areTheLettersUnique("abcdefghijklmnopqrstuvwxyz") == true, "failed 2 tets")
        assert(areTheLettersUnique("AaBbCc") == true, "failed 3 tets")
        assert(areTheLettersUnique("Hello, world") == false, "failed 4 tets")
    }
}

AreTheLetterUniqueTests.defaultTestSuite.run()
