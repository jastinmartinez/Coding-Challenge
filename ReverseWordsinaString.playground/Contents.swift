import UIKit

func reverseWords(_ s: String) -> String {
    return s.split(separator: " ").reversed().joined(separator: " ")
}

reverseWords("a goog   example")
reverseWords("hellow word")
reverseWords("the sky is blue")
