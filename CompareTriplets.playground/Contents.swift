import UIKit


func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var tuple = (0,0)
    for pair in zip(a, b) {
        if pair.0 > pair.1 {
            tuple.0 += 1
            continue
        }
        
        if pair.0 < pair.1 {
            tuple.1 += 1
        }
    }
    
    return [tuple.0, tuple.1]
}
