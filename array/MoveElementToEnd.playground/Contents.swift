import UIKit

var greeting = "Hello, playground"


func moveElementToEnd(_ array: inout [Int], _ toMove: Int) -> [Int] {
    let lenght = array.count
    var left = 0
    var right = lenght - 1
    var nextIndex = toMove
    while left < right {

        if toMove == array[left + 1] {
            array.swapAt(left + 1, left)
        }
        
        if toMove == array[right - 1] {
            array.swapAt(right, lenght - 1)
        }
       
        right -= 1
        left += 1
    }
    return array
}

var array = [2,1,2,2,2,3,4,2]
let result = moveElementToEnd(&array, 2)


[2,1,2,2,2,3,4,2]
[2,1,2,2,2,3,4,2]

print(result)
