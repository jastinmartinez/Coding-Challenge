import Foundation


func reverseStringUsingRecursion(_ input: String) -> String {
    guard !input.isEmpty else {
        return ""
    }
    let outer = String(input[input.startIndex..<input.index(before: input.endIndex)])
    let last = String(input[input.index(before: input.endIndex)])
    return last + reverseStringUsingRecursion(outer)
}

print(reverseStringUsingRecursion("123456"))
