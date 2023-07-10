import UIKit

var greeting = "Hello, playground"

func minimumCharactersForWords(_ words: [String]) -> [String] {
    var dic = [Character: [String]]()
    for word in words {
        var subDic = [Character: Int]()
        for subWord in word {
            if let value = subDic[subWord] {
                subDic[subWord] = value + 1
            } else {
                subDic[subWord] = 1
            }
        }
        for sub in subDic {
            if let value = dic[sub.key] {
                if value.count < sub.value {
                    dic[sub.key] = Array(repeating: String(sub.key), count: sub.value)
                }
            } else {
                dic[sub.key] = Array(repeating: String(sub.key), count: sub.value)
            }
        }
    }
    
    return dic.flatMap({$0.value })
}


print(minimumCharactersForWords(["this", "that", "did", "deed", "them!", "a"]))
