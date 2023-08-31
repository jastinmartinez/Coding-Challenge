import UIKit



func reverse(_ x: Int) -> Int {
    let characterList = Array(String(x))
    if let firstElement = characterList.first, !firstElement.isNumber {
       let result  = Int(String(firstElement) + String(characterList[1..<characterList.count].reversed())) ?? 0
        guard result > Int32.min else {
            return 0
        }
        return result
    }
    let result = Int(String(characterList.reversed())) ?? 0
    guard result < Int32.max else {
        return 0
    }
    return result
}


reverse(-2147483648)

print(Int32.min)
