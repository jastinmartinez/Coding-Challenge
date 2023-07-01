import UIKit

var greeting = "Hello, playground"

func insertionSort(array: inout [Int]) -> [Int] {
    var index = 0
    while index < array.count {
        var subIndex = index + 1
        while subIndex > 0 && subIndex < array.count {
            if array[subIndex] < array[subIndex - 1] {
                array.swapAt(subIndex, subIndex - 1)
                subIndex -= 1
                continue
            }
            break
        }
        index += 1
    }
    return array
}

var sus = [8, 5, 2, 9, 5, 6, 3]

insertionSort(array: &sus)
