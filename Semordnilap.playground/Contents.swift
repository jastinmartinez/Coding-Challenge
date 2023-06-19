import UIKit

func semordnilap(_ words: [String]) -> [[String]] {
    var dic = [String: String]()
    var result = [[String]]()
    for letter in words {
        let hash = String(letter.sorted())
        if let value = dic[hash] {
            result.append([value, letter])
        } else {
            dic[hash] = letter
        }
    }
    return result
}


semordnilap(["dog", "god"])
