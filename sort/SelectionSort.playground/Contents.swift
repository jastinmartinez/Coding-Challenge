import UIKit

var greeting = "Hello, playground"

/*
 Timer: O(N^2)
 Space O(1)
 */

func selectionSort(array: inout [Int]) -> [Int] {
    var currIndex = 0
    while currIndex < array.count {
        var subIndex = currIndex + 1
        var  smallIndex = subIndex - 1
        while subIndex < array.count {
            if array[smallIndex] > array[subIndex] {
                smallIndex = subIndex
            }
            subIndex += 1
        }
        array.swapAt(currIndex, smallIndex)
        currIndex += 1
    }
    return array
}


var array = [8, 5, 2, 9, 5, 6, 3]


selectionSort(array: &array)
