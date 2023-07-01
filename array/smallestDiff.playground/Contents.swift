import UIKit



func smallestDifference(arrayOne: inout [Int], arrayTwo: inout [Int]) -> [Int] {
    var left = 0
    var right = 0
    let s1 = arrayOne.sorted()
    let s2 = arrayTwo.sorted()
    var prev = 0
    var valueResult = (0,0)
    while left < s1.count && right < s2.count {
        let s1Element = s1[left]
        let s2Element = s2[right]
        let substract = abs(s1Element - s2Element)
        guard substract != 0 else {
            return [s1Element, s2Element]
        }
        if prev == 0 || prev >substract {
            prev = substract
            valueResult = (s1Element, s2Element)
        } else {
            if s1[left] < s2[right] {
                left += 1
            } else {
                right += 1
            }
        }
    }
    return [valueResult.0, valueResult.1]
}

var s1 = [-1,5,10,20,28,3]
var s2 = [26,134,135,15, 17]

smallestDifference(arrayOne: &s1, arrayTwo: &s2)
