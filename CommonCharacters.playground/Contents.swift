import UIKit

var greeting = "Hello, playground"

func commonCharacters(_ strings: [String]) -> [String] {
    guard strings.count > 1 else {
        return strings
    }

    var dic = strings.first?.reduce(into: [Character: Int](), { partialResult, element in
        partialResult[element] = 1
    })

    var index = 1

    while index < strings.count {
        for chr in strings[index] {
            if let value = dic?[chr] {
                if index == value {
                    dic?[chr] = value + 1
                }
            }
        }
        index += 1
    }
    return dic?.filter({$0.value == strings.count})
        .compactMap({ String($0.key) }) ?? []

}

commonCharacters(["a"])
