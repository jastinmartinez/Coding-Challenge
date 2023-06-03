import Foundation
import XCTest


func commonCharacters(_ strings: [String]) -> [String] {
    var dic = [String: Int]()
    for item in strings {
        for subItem in item where subItem == String {
            if let value = dic[subItem] {
                dic[subItem] = value + 1
            } else {
                dic[subItem] = 0
            }
        }
    }
    
    return dic.filter({$0.value == strings.count}).keys
}

func loopTo(_ array: Set<String>, dic: inout [String.Element: Int]) {
    var left = 0
    var right = array.count - 1
    while left < right {
        left += 1
        right -= 1
        
        if left > right {
            
        }
    }
}


commonCharacters(["aa","bb","cc"])
