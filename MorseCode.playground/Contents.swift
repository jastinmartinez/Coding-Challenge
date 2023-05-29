import UIKit

var greeting = "Hello, playground"

func issue(_ morseCode: String) -> [String] {
    var result = [String]()
    var index = 1
    while index < morseCode.count {
        var temp = Array(morseCode)
        temp[index - 1] = "-"
        temp[index] = "-"
        result.append(String(temp))
        index += 1
    }
    return result
}

issue(".....")
