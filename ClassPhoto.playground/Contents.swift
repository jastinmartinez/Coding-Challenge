import UIKit

func classPhotos(_ redShirtHeights: inout [Int], _ blueShirtHeights: inout [Int]) -> Bool {
    sortElements(&redShirtHeights)
    sortElements(&blueShirtHeights)
    var counter = (0 , 0)
    for item in zip(redShirtHeights, blueShirtHeights) {
        if item.0 > item.1 {
            counter.0 += 1
        } else if item.0 < item.1  {
            counter.1 += 1
        } else {
            return false
        }
    }
    return counter.0 > 0 && counter.1 == 0 || counter.0 == 0 && counter.1 > 0
}

private func sortElements(_ array: inout [Int]) {
    var index = 0
    var needToVerify = false
    while (index + 1) < array.count {
        if array[index] > array[index + 1] {
            array.swapAt(index, index + 1)
            needToVerify = true
        }
        index += 1
    }
    if needToVerify {
        sortElements(&array)
    }
}


var red = [6, 9, 2, 4, 5]
var blue = [5, 8, 1, 3, 4]
classPhotos(&red, &blue)
