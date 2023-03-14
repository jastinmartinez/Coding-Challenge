import UIKit

func sortedSquaredArray(_ array: [Int]) -> [Int] {
    var left = 0
    var right = 1
    var result = [Int]()
    for item in array {
        result.append(item * item)
    }
    while left < array.count && right < array.count {
        if result[left] > result[right] {
            result.swapAt(right, left)
            right -= 1
            left -= 1
            if right < 0 || left < 0 {
                right = 1
                left = 0
            }
        } else {
            right += 1
            left += 1
        }
    }
    return result
}


func sortedSquaredArray1(_ array: [Int]) -> [Int] {
    var left = 0
    var right = array.count - 1
    var result = Array(repeating: 0, count: array.count)
    while left < array.count && right > -1 {
        if abs(array[right]) > abs(array[left]) {
            result[right] = array[right] * array[right]
        } else {
            result[right] = array[left] * array[left]
        }
        right -= 1
        left += 1
    }
    return result
}


sortedSquaredArray1([-5, -4, -3, -2, -1])

