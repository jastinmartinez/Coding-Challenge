import UIKit

func isPalindrome(string: String) -> Bool {
    guard string.count > 1 else {
        return true
    }
    var left = string.startIndex
    var right = string.index(before: string.endIndex)
    while left <= right {
        if string[left] != string[right] {
            return false
        }
        left = string.index(after: left)
        right = string.index(before: right)
    }
    return true
}


isPalindrome(string: "ab")


