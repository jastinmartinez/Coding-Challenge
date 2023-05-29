import UIKit

func isSubsequence(_ s: String, _ t: String) -> Bool {
    var left = s.startIndex
    var right = t.startIndex
    while left < s.endIndex && right < t.endIndex {
        if s[left] == t[right] {
            left = s.index(after: left)
        }
        right = t.index(after: right)
    }
    return left == s.endIndex
}







