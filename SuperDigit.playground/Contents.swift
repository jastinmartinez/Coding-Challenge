import UIKit

var greeting = "Hello, playground"

func superDigit(n: String, k: Int) -> Int {
    if k > 1 && n.count > 2 {
        var sumNumber = 0
        if let character = n.last, character.isNumber {
            loop(value: &sumNumber, n: n)
            sumNumber *= k
        } else {
            loop(value: &sumNumber, n: String(n.dropLast()))
        }
        return superDigit(n: String(sumNumber) + "k", k: k - 1)
    } else {
        return n.reduce(into: Int()) { partialResult, character in
            partialResult += getIntFrom(character)
        }
    }
}

func loop(value: inout Int, n: String) {
    let n = Array(n)
    var left = 0
    var right = n.count - 1
    while left < right {
        value += getIntFrom(n[left]) + getIntFrom(n[right])
        right -= 1
        left += 1
        if right == left {
          value += getIntFrom(n[left])
        }
    }
}

func getIntFrom(_ character: Character) -> Int {
    return character.wholeNumberValue ?? 0
}

superDigit(n: "148", k: 3)
