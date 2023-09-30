import UIKit

var greeting = "Hello, playground"

func productSum(_ array: [Any],
                depth: Int = 1) -> Int {
    var result = 0
    for item in array {
        if let item = item as? [Any] {
            result += productSum(item, depth: depth + 1) * (depth + 1)
        }
        if let item = item as? Int {
            result += item
        }
    }
   return result
 }

productSum([1, 2, [3], 4, 5])
productSum([5, 2, [7, -1], 3, [6, [-13, 8], 4]])
/*
depth = 1
 [5, 2,
 depth = 2
 [7, -1], 3,
 depth = 2
 [6,
 depth = 3
 [-13, 8], 4]]
 */

// input array of numbers that can contain array of numbers
// every element in array is sum
// multiply by level of depth
