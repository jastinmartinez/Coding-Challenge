import UIKit

var array = [5, 23, 111]
let target = 111

func binarySearch(array: [Int], target: Int) -> Int {
    var lhs = 0
    var lhr = array.count-1
    var index = lhr - lhs
    while lhs != lhr {
        guard index > -1 && index < array.count else {
            return -1
        }
        let value = array[lhs...lhr][index]
        if value > target {
            index -= 1
            lhr = index
        } else if value < target  {
            index += 1
            lhs = index
        } else {
            return index
        }
        index = lhr - lhs
    }
    return array[index] == target ? index : -1
}

binarySearch(array: array, target: target)
