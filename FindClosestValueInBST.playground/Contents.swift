import UIKit

class BST {
    var value: Int
    var left: BST?
    var right: BST?
    
    init(value: Int) {
        self.value = value
        left = nil
        right = nil
    }
}

func findClosestValueInBST(tree: BST?, target: Int) -> Int {
    var closeDiff = 1
    var curr: BST? = tree
    while curr != nil {
        let value = curr?.value ?? 0
        let diff = abs(value - target)
        guard diff > 0 else {
            return value
        }
        if abs(closeDiff - target) > diff {
            closeDiff = value
        }
        if value < target {
            curr = curr?.left
        } else {
            curr = curr?.right
        }
    }
    return closeDiff
}
