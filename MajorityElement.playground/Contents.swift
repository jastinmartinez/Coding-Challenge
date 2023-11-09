import UIKit


// can't sort and have to be O(1) space
// majority = greater than half of array indices

func majorityElement(_ array: [Int]) -> Int {
    var counter = 1
    var index = 1
    var answer = array[index-1]
    while (index + 1) < array.count {
        if answer == array[index] {
            counter += 1
        } else {
            counter -= 1
            if counter == 0 {
                answer = array[index + 1]
            }
        }
        index += 1
    }
    return answer
}

majorityElement([1,2,3,2,2,1,2])
