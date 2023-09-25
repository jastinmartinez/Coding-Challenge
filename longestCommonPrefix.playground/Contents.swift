import UIKit


func longestCommonPrefix(_ strs: [String]) -> String {
    var index = 0
    var result = ""
    while index >= 0  {
        var toBeCompare = ""
        for str in strs {
            let toArray = Array(str)
            guard index < toArray.count else {
                break
            }
            let item = String(toArray[index])
            if toBeCompare.isEmpty {
                toBeCompare.append(item)
                continue
            }
            guard toBeCompare.contains(item) else {
                break
            }
            toBeCompare.append(item)
        }
        guard toBeCompare.count == strs.count else {
            break
        }
        result.append(toBeCompare[toBeCompare.startIndex])
        index += 1
    }
    return result
}

longestCommonPrefix(["dog","racecar","car"])
