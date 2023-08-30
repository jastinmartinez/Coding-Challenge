import UIKit

var greeting = "Hello, playground"


func missingNumbers(_ nums: [Int]) -> [Int] {
    var lhsHas = 1
    var lhrHas = nums.count + 2
    var lhs = 0
    var lhr = 0
    while lhsHas <= lhrHas {
        if !nums.contains(lhsHas) {
            if lhs == 0 {
                lhs = lhsHas
            } else if lhr == 0{
                lhr = lhsHas
            } else {
                break
            }
            lhsHas += 1
            continue
        }
        if !nums.contains(lhrHas) {
            if lhr == 0 {
                lhr = lhrHas
            } else if lhs == 0 {
                lhs = lhrHas
            } else {
                break
            }
            lhrHas -= 1
            continue
        }
        lhsHas += 1
        lhrHas -= 1
    }
    return [lhs, lhr]
}

missingNumbers([3,2,1])

