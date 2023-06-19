import UIKit

func runLengthEncoding(_ string: String) -> String {
    var result = [String]()
    var dic = [Character: Int]()
    let initialValue = 1
    let limit = 9
    for chc in string {
        if let value = dic[chc] {
            let nextValue = value + initialValue
            if nextValue > limit {
                let nextValue = nextValue - limit
                dic[chc] = initialValue
                result.append("\(nextValue)\(chc)")
            } else {
                dic[chc] = nextValue
                result[result.count - 1] = "\(nextValue)\(chc)"
            }
        } else {
            dic = [:]
            dic[chc] = initialValue
            result.append("\(initialValue)\(chc)")
        }
    }
    return result.joined()
}




runLengthEncoding("AAAAAAAAAAAAABBCCCCDDDDDDDDDDD")
