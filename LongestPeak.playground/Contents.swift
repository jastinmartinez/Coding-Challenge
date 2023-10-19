import Foundation

func longestPeak(array: [Int]) -> Int {
    var maxPeak = 0
    var index = 1
    while index < array.count-1 {
        let current = array[index]
        if current > array[index-1]  && current > array[index+1] {
            let possibleMaxPeak = verifySubLeft(array, at: index) + verifySubRight(array, at: index) + 1
            maxPeak = max(maxPeak, possibleMaxPeak)
        }
        index += 1
    }
    return maxPeak
}

private func verifySubRight(_ array: [Int], at index: Int) -> Int {
    var subResult = 0
    var index = index
    while index < array.count-1 && array[index] > array[index+1] {
        subResult += 1
        index += 1
    }
    return subResult
}

private func verifySubLeft(_ array: [Int], at index: Int) -> Int {
    var subResult = 0
    var index = index
    while index > 0 && array[index] > array[index-1] {
        subResult += 1
        index -= 1
    }
    return subResult
}

print(longestPeak(array: [1, 2, 3, 3, 4, 0, 10, 6, 5, -1, -3, 2, 3]))
