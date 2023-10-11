import UIKit

func tandemBicycle(_ redShirtSpeeds: inout [Int], _ blueShirtSpeeds: inout [Int], _ fastest: Bool) -> Int {
    if fastest {
        redShirtSpeeds = redShirtSpeeds.sorted()
        blueShirtSpeeds = blueShirtSpeeds.sorted().reversed()
    } else {
        redShirtSpeeds = redShirtSpeeds.sorted()
        blueShirtSpeeds = blueShirtSpeeds.sorted()
    }
    
    return zip(redShirtSpeeds, blueShirtSpeeds).reduce(into: Int()) { partialResult, item in
        partialResult += max(item.0, item.1)
    }
}



var arr1 = [5, 5, 3, 9, 2]
var arr2 = [3, 6, 7, 2, 1]
var isFast = true

print(tandemBicycle(&arr1, &arr2, true))
