import UIKit

var greeting = "Hello, playground"

func firstDuplicateValue(_ array: inout [Int]) -> Int {
    var curr = Set<Int>()
    for item in array {
        if curr.contains(item) {
           return item
        } else {
            curr.insert(item)
        }
    }
    return -1
}

var array =  [21, 17, 1, 8, 22, 8, 22, 8, 23, 3, 21, 5, 18, 2, 8, 21, 21, 22, 10, 24, 13, 4, 20, 24]
print(firstDuplicateValue(&array))
