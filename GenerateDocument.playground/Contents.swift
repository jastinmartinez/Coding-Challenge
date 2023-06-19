import UIKit

var greeting = "Hello, playground"


func generateDocument(_ characters: String, _ document: String) -> Bool {
    var dic = characters.reduce(into: [Character: Int](), { acc, element in
        if let value = acc[element] {
            acc[element] = value + 1
        } else {
            acc[element] = 1
        }
    })

    for letter in document {
        if let value = dic[letter] {
            let reduce = value - 1
            if reduce == 0 {
                dic[letter] = nil
            } else {
                dic[letter] = reduce
            }
        } else {
            return false
        }
    }
    return true
  }


generateDocument("aheaolabbhb", "hello")
