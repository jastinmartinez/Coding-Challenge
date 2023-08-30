
import UIKit

func threeNumberSum(array: inout [Int], targetSum: Int) -> [[Int]] {
    let sorted = array.sorted()
    var results = [[Int]]()
    var current = 0
    var left = 1
    let max = sorted.count - 1
    var right = max
    while current < max {
        if left >= right {
            current += 1
            left = current + 1
            right = max
        } else {
            let currentSum = sorted[current] + sorted[left] + sorted[right]
            if currentSum < targetSum {
                left += 1
            } else if currentSum > targetSum {
                right -= 1
            } else {
                results.append([sorted[current], sorted[left], sorted[right]])
                left += 1
                right -= 1
            }
        }
    }
    return results
}

var result: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9]

threeNumberSum(array: &result, targetSum: 10)


