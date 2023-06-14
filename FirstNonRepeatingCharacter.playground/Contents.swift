import UIKit

func firstNonRepeatingCharacter(_ string: String) -> Int {
    var dic = [Character: Int]()
    for (index, chr) in string.enumerated() {
        if let _ = dic[chr] {
            dic[chr] = Int.max
        } else {
            dic[chr] = index
        }
    }

    return dic.values.filter({$0 != Int.max}).sorted().first ?? -1
}


firstNonRepeatingCharacter("faadabcbbebdf")
