import UIKit

var greeting = "Hello, playground"

/*
 Time O(n)
 Space O(n)
 
 can't use build func like (reverse, split, sort, join)
 */

func reverseWordsInString(_ string: String) -> String {
   guard string.count > 1 else {
        return string
    }
    var array = [String.Element]()
    let content = Array(string)
    var index = content.count - 1
    var subLetter = [String.Element]()
    var prevIndex = index
    while index > -1 {
        if content[index].isWhitespace {
            for subIndex in index + 1..<prevIndex + 1 {
                subLetter.append(content[subIndex])
            }
            array += subLetter + [content[index]]
            subLetter = []
            prevIndex = index - 1
        }
        index -= 1
    }
    array += content[index + 1...prevIndex]
    return String(array)
  }

reverseWordsInString("..H,, hello 678")
