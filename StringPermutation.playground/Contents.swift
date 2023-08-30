import Foundation


func stringPermutation(_ input: String,_ current: String = "") -> String {
    let input = Array(input)
    let length = input.count
    if length > 0 {
        for index in 0..<length {
            let next = String(input[0..<index]) + String(input[(index + 1)..<length])
            let current = current + String(input[index])
            stringPermutation(next, current)
        }
    } else {
        print(current)
    }
    return current
}

stringPermutation("abc")

    
extension String {
    func removingZeros(_ value: String = "") -> String {
        var input = value.isEmpty ? self : value
        if input.hasPrefix("0") {
            return removingZeros(String(input.dropFirst()))
        }
        return input
    }
}

let a = "000000000ad1".removingZeros()
