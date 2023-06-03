import UIKit

var greeting = "Hello, playground"

func moveElementToEnd(_ array: inout [Int], _ toMove: Int) -> [Int] {
    var start = 0
    var end = array.count - 1
    while start <= end {
        if array[start] == toMove && array[end] == toMove {
            end -= 1
        } else if array[start] == toMove && array[end] != toMove {
            array.swapAt(start, end)
            start += 1
        } else if array[end] != toMove {
            array.swapAt(end, start)
            start += 1
        } else if start == end && array[start] == toMove {
            array.swapAt(start, array.count - 1) }
        else {
            end -= 1
            start += 1
        }
    }
    return array
}

var array = [5, 1, 2, 5, 5, 3, 4, 6, 7, 5, 8, 9, 10, 11, 5, 5, 12]

moveElementToEnd(&array, 5)
