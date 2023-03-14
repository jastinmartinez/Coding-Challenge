import UIKit

func josephusSurvivor(_ n: Int, _ k: Int) -> Int {
    var index = 0
    let numbers = Array(1...n)
    var result = 0
    var counter = k * n
    while index < numbers.count {
        if counter < 0 {
            break
        }
        if counter % k == 0 {
            result = numbers[index]
        }
        counter -= 1
        index + 1
        if index < numbers.count {
            index = 0
        }
    }
    return result
}

josephusSurvivor(7,3)
