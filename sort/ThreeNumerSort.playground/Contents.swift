import UIKit
/*
 Time O(n)
 Space O(1)
 */
func threeNumberSort(_ array: inout [Int], _ order: [Int]) -> [Int] {
    var counter = 0
    for item in order {
        var index = counter
        while index < array.count {
            if array[index] == item {
                array.swapAt(index, counter)
                counter += 1
            }
            index += 1
        }
    }
    return array
}

var array = [0, 1, 2, 0, 1, 2, 0, 1, 2, 0, 1, 1, 2]
var order = [1, 2, 0]
threeNumberSort(&array, order)
