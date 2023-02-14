import UIKit

// Time O(n) Space O(1)
func isValidSubsequence(_ array: [Int], _ sequence: [Int]) -> Bool {
    var arrayPointer = 0
    var sequencePointer = 0
    while arrayPointer < array.count && sequencePointer < sequence.count {
        if array[arrayPointer] == sequence[sequencePointer] {
            sequencePointer += 1
        }
        arrayPointer += 1
    }
    return sequencePointer == (sequence.count - 1)
}

isValidSubsequence([5, 1, 22, 25, 6, -1, 10, 8], [5, 1, 22, 25, 6, -1, 8, 10])



