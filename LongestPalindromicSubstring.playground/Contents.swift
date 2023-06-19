import UIKit

func longestPalindromicSubstring(string: String) -> String {
    guard string.count > 1 else {
        return string
    }
    var result = ""
    var index = 0
    let content = Array(string)
    var dic = [String.Element: [Int]]()
    while index < content.count {
        let value = content[index]
        if var prevIndexList = dic[value] {
            for prevIndex in prevIndexList {
                let reversed = String(content[prevIndex...index].reversed())
                let current = String(content[prevIndex...index])
                if reversed == current {
                    if result.count < current.count {
                        result = current
                    }
                }
            }
            prevIndexList.append(index)
            dic[value] = prevIndexList
        } else {
            dic[value] = [index]
        }
        index += 1
    }
    return result
}


longestPalindromicSubstring(string: "zzzzzzz2345abbbba5432zzbbababa")

