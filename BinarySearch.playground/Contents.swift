import UIKit

var array = [0, 1, 21, 33, 45, 45, 61, 71, 72, 73, 355]
let target = 21

func binarySearch(array: [Int], target: Int) -> Int {
    var lhs = 0
    var lhr = array.count-1
    var index = lhr / 2
    let fail = -1
    while lhs != lhr {
        guard index > -1 && index < array.count else {
            return fail
        }
        let value = array[lhs...lhr][index]
        if value > target {
            lhr = index - 1
        } else if value < target  {
            lhs = index + 1
        } else {
            return index
        }
        index = (lhr + lhs) / 2
    }
    return array[index] == target ? index : fail
}

print(binarySearch(array: array, target: target))
