import UIKit

var greeting = "Hello, playground"


func groupAnagrams(_ words: [String]) -> [[String]] {
    var dic = [String: [String]]()
    for word in words {
        let key = String(word.sorted())
        if var valueList = dic[key] {
            valueList.append(word)
            dic[key] = valueList
        } else {
            dic[key] = [word]
        }
    }
    return  dic.values.map({ $0 })
 }
