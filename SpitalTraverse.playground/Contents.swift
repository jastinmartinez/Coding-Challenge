import UIKit

func spiralTraverse(array: [[Int]]) -> [Int] {
    var result = [Int]()
    var startRow = 0, endRow = array.count - 1
    var startCol = 0, endCol = array[0].count - 1
    
    while startRow <= endRow && startCol <= endCol {
        for col in startCol..<endCol + 1 {
            result.append(array[startRow][col])
        }
        
        for row in startRow..<endRow + 1 {
            //            print(1)
            result.append(array[row][endCol])
        }
        
        for col in stride(from: endCol, to: startCol, by: -1) {
            print(1)
            result.append(array[endRow][col])
        }
        
        for row in stride(from: endRow, to: startRow, by: -1) {
            print(1)
            result.append(array[row][startCol])
        }
        
        startRow += 1
        endRow -= 1
        startCol += 1
        endCol -= 1
    }
    return result
}



var array =  [[1, 3, 2, 5, 4, 7, 6]]

print(spiralTraverse(array: array))


func isPalindrome(_ x: Int) -> Bool {
    let intToStringList = Array(String(x))
    var lfs = 0
    var rhs = intToStringList.count - 1
    while lfs < rhs {
        if intToStringList[lfs] != intToStringList[rhs] {
            return false
        }
        lfs += 1
        rhs -= 1
    }
    return true
}

isPalindrome(121)
