import UIKit


func powerSum(X: Int, N: Int) -> Int {
    return loopTo(limit: X, powerOf: N, number: 1)
}

func loopTo(limit: Int,
            powerOf: Int,
            number: Int) -> Int {
    var curr = limit - Int(pow(Double(number), Double(powerOf)))
    print("\(curr) -> \(limit)")
    if curr == 0 {
        return 1
    }
    if curr < 0 {
        return 0
    }
    print(" ")
    print("new tree")
    return loopTo(limit: curr, powerOf: powerOf, number: number + 1) + loopTo(limit: limit, powerOf: powerOf, number: number + 1)
}


powerSum(X: 100, N: 2)
