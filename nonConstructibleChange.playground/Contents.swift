import UIKit



func nonConstructibleChange(_ coins: inout [Int]) -> Int {
    var curr = 0
    for coin in coins.sorted() {
        if coin > curr + 1 {
            return curr + 1
        }
        curr += coin
    }
    return curr + 1
}

//[1, 1, 2, 3, 5, 7, 22]
var non = [1,2,5]
var non1 = [5,7,1,1,2,3,22]

nonConstructibleChange(&non1)
