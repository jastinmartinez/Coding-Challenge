import UIKit


func isPalindrome(_ x: Int) -> Bool {
    let intToStringList = Array(String(x))
    var lfs = 0
    var rhs = intToStringList.count - 1
    while lfs < rhs {
        if intToStringList[lfs] != intToStringList[rhs] {
            return false
        }
        lfs += 1
        rhs -= 1
    }
    return true
}

isPalindrome(121)
