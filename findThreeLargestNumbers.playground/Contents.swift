import Foundation

func findThreeLargestNumbers(array: [Int]) -> [Int] {
    var value = (Int.min, Int.min, Int.min)
    for item in array {
        value.2 = min(max(value.2, item),value.1)
        value.1 = min(max(value.1, item),value.0)
        value.0 = max(value.0, item)
    }
    return [value.2, value.1, value.0]
}


let array = [141, 1, 17, -7, -17, -27, 18, 541, 8, 7, 7]
print(findThreeLargestNumbers(array: array))
