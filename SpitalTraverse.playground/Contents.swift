import UIKit

func spiralTraverse(array: [[Int]]) -> [Int] {
    var result = [Int]()
    var startRow = 0, endRow = array.count - 1
    var startCol = 0, endCol = array[0].count - 1
    while startRow <= endRow && startCol <= endCol {
        for col in stride(from: startCol, to: endCol + 1, by: 1) {
            result.append(array[startRow][col])
        }
        startRow += 1
        for row in stride(from: startRow, to: endRow + 1, by: 1){
            result.append(array[row][endCol])
        }
        endCol -= 1
        if startRow <= endRow {
            for col in stride(from: endCol, to: startCol - 1, by: -1) {
                result.append(array[endRow][col])
            }
        }
        endRow -= 1
        if startCol <= endCol {
            for row in stride(from: endRow, to: startRow - 1, by: -1) {
                result.append(array[row][startCol])
            }
        }
        startCol += 1
    }
    return result
}
var array =  [[1, 2, 3, 4],
              [12, 13, 14, 5],
              [11, 16, 15, 6],
              [10, 9, 8, 7]]

var array1 =  [[1, 2, 3, 4],
               [10, 11, 12, 5],
               [9, 8, 7, 6]]

print(spiralTraverse(array:  array))
