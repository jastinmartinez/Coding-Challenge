import UIKit

func mergeOverlappingIntervals(_ intervals: [[Int]]) -> [[Int]] {
    var result = [[Int]]()
    var intervals = intervals.sorted(by: { $0[0] < $1[0] })
    var last = Int.min
    var index = 0
    while index < intervals.count {
        let interval = intervals[index]
        if result.count > 0 && last >= interval[0] {
            if interval[1] > last {
                result[result.count-1][1] = interval[1]
                last = interval[1]
            }
        } else {
            result.append(interval)
            last = interval[1]
        }
        index += 1
    }
    return result
}


var demo = [
    [1, 2],
    [3, 5],
    [4, 7],
    [6, 8],
    [9, 10]
]

var demo1 = [
    [100, 105],
    [1, 104],
]

var demo2 = [
    [1, 22],
    [-20, 30]]

var demo3 = [
    [2, 3],
    [4, 5],
    [6, 7],
    [8, 9],
    [1, 10]
]

print(mergeOverlappingIntervals(demo))
