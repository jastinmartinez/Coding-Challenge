import UIKit

var greeting = "Hello, playground"


class BinaryTree {
    var value: Int
    var left: BinaryTree?
    var right: BinaryTree?
    
    init(value: Int) {
        self.value = value
        left = nil
        right = nil
    }
}


func evaluateExpressionTree(_ tree: BinaryTree?) -> Int {
    guard let tree = tree else {
        return 0
    }
    switch tree.value {
    case -1:
        return evaluateExpressionTree(tree.left) + evaluateExpressionTree(tree.right)
    case -2:
        return evaluateExpressionTree(tree.left) - evaluateExpressionTree(tree.right)
    case -3:
        return evaluateExpressionTree(tree.left) / evaluateExpressionTree(tree.right)
    case -4:
        return evaluateExpressionTree(tree.left) * evaluateExpressionTree(tree.right)
    default:
        return tree.value
    }
}


// Mock data set up

let binary = BinaryTree(value: -1)

// Left
binary.left = BinaryTree(value: -2)
binary.left?.left = BinaryTree(value: -4)
binary.left?.right = BinaryTree(value: 2)
binary.left?.left?.left = BinaryTree(value: 2)
binary.left?.left?.right = BinaryTree(value: 3)

// right
binary.right = BinaryTree(value: -3)
binary.right?.left = BinaryTree(value: 8)
binary.right?.right = BinaryTree(value: 3)

print(evaluateExpressionTree(binary))
