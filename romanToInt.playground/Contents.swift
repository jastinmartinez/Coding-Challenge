import UIKit

func romanToInt(_ s: String) -> Int {
    let tableOfConversion: [String.Element: Int] = ["I": 1,
                                                    "V": 5,
                                                    "X": 10,
                                                    "L": 50,
                                                    "C": 100,
                                                    "D": 500,
                                                    "M": 1000]
    var result = 0
    let toArray = Array(s)
    var index = 0
    var prev = Int.max
    while index < toArray.count {
        if let val = tableOfConversion[toArray[index]] {
            result = prev >= val ? result + val : (result + (val - prev)) - prev
            prev = val
        }
        index += 1
    }
    return result
}
print(romanToInt("MCMXCIV"))
