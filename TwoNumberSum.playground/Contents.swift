import UIKit

func twoNumberSum(array: inout [Int], _ targetSum: Int) -> [Int] {
    for index in 0..<array.count {
        for subIndex in index..<array.count {
            guard array[index] != array[subIndex] else {
                continue
            }
            if array[index] + array[subIndex] == targetSum  {
                return [array[index], array[subIndex]]
            }
        }
    }
    return []
}

func twoNumberSum(_ array: inout [Int], _ targetSum: Int) -> [Int] {
    var list = Set<Int>()
    for index in 0..<array.count {
        let operation = targetSum - array[index]
        if list.contains(operation)  {
            return [operation, array[index]]
        } else {
            list.insert(array[index])
        }
    }
    return []
}


func twoNumberSum(sorted: inout [Int], _ targetSum: Int) -> [Int] {
    let value = sorted.sorted()
    var pointer = (0, value.count - 1)
    while pointer.0 < pointer.1 {
        if value[pointer.0] + value[pointer.1] == targetSum {
            return [value[pointer.0], value[pointer.1]]
        } else if value[pointer.0] + value[pointer.1] > targetSum {
            pointer.1 -= 1
        } else {
            pointer.0 += 1
        }
    }
    return []
}


var test = [3,5,-4,8,11,1,-1,6]
twoNumberSum(&test, 13)
twoNumberSum(array: &test, 13)
twoNumberSum(sorted: &test, 13)


