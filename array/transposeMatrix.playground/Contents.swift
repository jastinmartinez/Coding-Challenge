import UIKit

func transposeMatrix(_ matrix: [[Int]]) -> [[Int]] {
    var subResult = [Int]()
    var result = [[Int]]()
    var index = 0
    var depth = 0
    var counter = 0
    while index < matrix.count && counter > -1 {
        counter = max(counter, matrix[index].count)
        if depth < matrix[index].count {
            subResult.append(matrix[index][depth])
        }
        index += 1
        if index == matrix.count {
            depth += 1
            index = 0
            counter = counter - depth
            if !subResult.isEmpty {
                result.append(subResult)
                subResult = []
            }
        }
    }
    return result
}


print(transposeMatrix([[1,2,3]]))
