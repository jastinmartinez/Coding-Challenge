import Foundation
import XCTest

extension String {
    func customContains(dic: String) -> Bool {
        let original = self.split(separator: " ")
        let toCompareDic = Dictionary(grouping: original) { element in
            return element.lowercased()
        }
        let compare = dic.split(separator: " ")
        for item in compare {
            if toCompareDic[item.lowercased()] != nil {
                return true
            }
        }
        return false
    }
    
    func customContains(range: String) -> Bool {
        return !self.lowercased().ranges(of: range.lowercased()).isEmpty
    }

}

class CustomContainsTest: XCTestCase {
    func test_CustomContains() {
        XCTAssert("Hello".customContains(dic: "hello"))
        XCTAssert("Hello, world".customContains(range: "WORLD"))
        XCTAssert("Hello, World".customContains(dic: "Good Bye") == false)
        
    }
}

CustomContainsTest.defaultTestSuite.run()
