import UIKit

func isMonotonic(array: [Int]) -> Bool {
    var index = 0
    var isIncreasing: Bool? = nil
    while (index + 1) < array.count {
        if array[index + 1] == array[index] {
            index += 1
            continue
        } else {
            if array[index + 1] < array[index] {
                if isIncreasing == nil {
                    isIncreasing = false
                } else {
                    if let isIncreasing = isIncreasing, isIncreasing {
                        return false
                    }
                }
            } else {
                if isIncreasing == nil {
                    isIncreasing = true
                } else {
                    if let isIncreasing = isIncreasing, !isIncreasing {
                        return false
                    }
                }
            }
        }
        index += 1
    }
    return true
}
var array = [1,2,3,3,2,1]
isMonotonic(array: array)
