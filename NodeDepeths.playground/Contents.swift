import UIKit

class BinaryTree {
    var value: Int
    var left: BinaryTree?
    var right: BinaryTree?
    
    init(value: Int) {
        self.value = value
    }
}

func nodeDepths(_ root: BinaryTree?) -> Int {
    var value = -1
    nodeDepths(root,depth: 0, value: &value)
    return value
}

func nodeDepths(_ root: BinaryTree?, depth: Int, value: inout Int) {
    if root != nil {
        nodeDepths(root?.left, depth: depth + 1, value: &value)
        nodeDepths(root?.right, depth: depth + 1, value: &value)
        value += depth
    }
}
