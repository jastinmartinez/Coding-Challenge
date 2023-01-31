import Foundation
import XCTest

struct Tuple: Equatable {
    var vowels: Int
    var consonants: Int
}

func vowelsAndConsonant(_ input: String) -> Tuple {
    let vowels = "aeiou"
    var letters = Array(input.filter({ $0.isLetter }))
    let indexSet = letters.partition { value in
        return vowels.contains(value)
    }
    return Tuple(vowels: letters[indexSet...].count, consonants: letters[..<indexSet].count)
}

class VowelsAndConsonantTest: XCTestCase {
    func test_void() {
        XCTAssertEqual(vowelsAndConsonant("Swift Coding Challenges"), Tuple(vowels: 6, consonants: 15))
        XCTAssertEqual(vowelsAndConsonant("Mississippi"), Tuple(vowels: 4, consonants: 7))
    }
}

VowelsAndConsonantTest.defaultTestSuite.run()
