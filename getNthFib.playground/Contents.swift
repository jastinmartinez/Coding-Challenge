import UIKit

func getNthFib(n: Int) -> Int {
    guard n != 1 else {
        return 0
    }
    
    guard n != 2 else {
        return 1
    }
    
    var acc = 0
    var lhs = 0
    var lhr = 1
    var index = 2
    while index < n {
        acc = lhs + lhr
        lhs = lhr
        lhr = acc
        index += 1
    }
    
    return acc
}

getNthFib(n: 6)
