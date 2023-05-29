import UIKit

var greeting = "Hello, playground"

func caesarCipherEncryptor(string: String, key: UInt32) -> String {
    var list = Array(string)
    var left = 0
    var right = list.count - 1
    let key = key % 26
    while left != right {
        loopTo(list: &list, index: left, key: key)
        loopTo(list: &list, index: right, key: key)
        left += 1
        right -= 1
        if left == right {
            loopTo(list: &list, index: left, key: key)
        }
    }
    return String(list)
}

func loopTo(list: inout [String.Element], index: Int, key: UInt32) {
    let initialLetterValue = UnicodeScalar("a").value
    let lastLetterValue = UnicodeScalar("z").value
    if let currValue = UnicodeScalar(String(list[index]))?.value {
        let nextLetterValue = currValue + key
        if nextLetterValue <= lastLetterValue, let nextLetter = UnicodeScalar(nextLetterValue) {
            list[index] = String.Element(nextLetter)
        } else {
            if let value = UnicodeScalar(96 + (nextLetterValue % lastLetterValue)) {
                list[index] = String.Element(value)
            }
        }
    }
}

caesarCipherEncryptor(string: "xyz", key: 15)
