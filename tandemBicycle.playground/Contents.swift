import UIKit

func tandemBicycle(_ redShirtSpeeds: inout [Int], _ blueShirtSpeeds: inout [Int], _ fastest: Bool) -> Int {
    
    redShirtSpeeds = redShirtSpeeds.xSort()
    blueShirtSpeeds = blueShirtSpeeds.xSort()
    
    if fastest {
        blueShirtSpeeds = blueShirtSpeeds.xReversed()
    }
    
    return zip(redShirtSpeeds, blueShirtSpeeds).reduce(into: Int()) { partialResult, item in
        partialResult += max(item.0, item.1)
    }
}


private extension Array where Element == Int {
    func xSort() -> [Element] {
        return xSort(self)
    }
    //    Easy bubble sort .
    private func xSort(_ item: [Element]) -> [Element] {
        var item = item
        var index = 0
        var isSorted = true
        while (index + 1) < item.count {
            if item[index] > item[index + 1] {
                item.swapAt(index, index + 1)
                isSorted = false
            }
            index += 1
        }
        if !isSorted {
            item = xSort(item)
        }
        return item
    }
    
    func xReversed() -> [Element] {
        return xReversed(self)
    }
    
    // Recursion Reversed
    private func xReversed(_ item: [Element]) -> [Element] {
        guard !item.isEmpty else {
            return []
        }
        let lastElement = item[item.count-1]
        let nextElements = Array(item[0..<item.count-1])
        return [lastElement] + xReversed(nextElements)
    }
}


var arr1 = [5, 5, 3, 9, 2]
var arr2 = [3, 6, 7, 2, 1]
var isFast = true

print(tandemBicycle(&arr1, &arr2, true))
