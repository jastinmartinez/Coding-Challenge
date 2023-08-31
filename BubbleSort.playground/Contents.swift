import UIKit

var greeting = "Hello, playground"


func bubbleSort(array: inout [Int]) -> [Int] {
    var isSwap = false
    var index = 0
    while (index + 1) < array.count {
        if array[index + 1] < array[index]  {
            array.swapAt(index, index + 1)
            isSwap = true
        }
        index += 1
    }
    return isSwap ? bubbleSort(array: &array) : array
    
}

var sus = [8, 5, 2, 9, 5, 6, 3]
bubbleSort(array: &sus)
