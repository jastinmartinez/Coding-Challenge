import UIKit


func powerSum(X: Int, N: Int) -> Int {
    return loopTo(limit: X, powerOf: N, number: 1)
}

func loopTo(limit: Int,
            powerOf: Int,
            number: Int, identity: String = "Z") -> Int {
    print(" ")
    print("Tree " + identity)
    print("number \(number) -> powerOf \(powerOf)")
    var curr = limit - Int(pow(Double(number), Double(powerOf)))
    print("curr \(curr) -> limit \(limit)")
    if curr == 0 {
        return 1
    }
    if curr < 0 {
        return 0
    }
    return loopTo(limit: curr, powerOf: powerOf, number: number + 1, identity: "X") + loopTo(limit: limit, powerOf: powerOf, number: number + 1, identity: "Y")
}


powerSum(X: 100, N: 2)
