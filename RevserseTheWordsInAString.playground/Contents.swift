import UIKit

func reverseWordInAString(_ input: String) -> String {
    var input = input.map({ $0 })
    var left = 0
    var right = input.count - 1
    while right != left {
        let prevLeft = input[left]
        input[left] = input[right]
        input[right] = prevLeft
        left += 1
        right -= 1
    }
    return String(input)
}
reverseWordInAString("Swift Coding Challenges Swift Coding Challenges")



