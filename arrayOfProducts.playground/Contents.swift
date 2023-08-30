import UIKit

func arrayOfProducts(_ array: [Int]) -> [Int] {
    var result = [Int]()
    var index = 0
    while index < array.count {
        let sumLHS = array[index + 1..<array.count].reduce(1, *)
        let sumLHR = array[0..<index].reduce(1, *)
        result.append(sumLHS * sumLHR)
        index += 1
    }
    return result
}

arrayOfProducts([5,1,4,2])
