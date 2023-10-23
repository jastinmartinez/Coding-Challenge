import UIKit

func bestSeat(_ seats: [Int]) -> Int {
    var bestSeat = -1
    var index = 1
    var acc = 0
    var prevAcc = 0
    while index < seats.count {
        if seats[index] == 0 {
            acc += 1
            if (index + 1) < seats.count && seats[index+1] == 1 {
                if acc > prevAcc {
                    bestSeat = index - (acc / 2)
                }
                prevAcc = acc
                acc = 0
            }
        }
        index += 1
    }
    return bestSeat
}

print(bestSeat([1, 0, 1, 0, 0, 0, 1]))

