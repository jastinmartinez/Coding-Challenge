import UIKit


enum BinaryTree<T: Comparable> {
    case empty
    indirect case node(BinaryTree, T, BinaryTree)
    
    mutating func insert(_ newValue: T) {
        self = newTreeWithInsertedValues(newValue)
    }
    
    private func newTreeWithInsertedValues(_ newValue: T) -> BinaryTree {
        switch self {
        case .empty:
            return .node(.empty, newValue, .empty)
        case let .node(left, value, right):
            if  newValue > value {
                return .node(left, value, right.newTreeWithInsertedValues(newValue))
            } else {
                return .node(left.newTreeWithInsertedValues(newValue), value, right)
            }
        }
    }
    
    func inOrderTraversal(_ completion: (T) -> Void) {
        switch self {
        case .empty:
            return
        case let .node(left, value, right):
            left.inOrderTraversal(completion)
            completion(value)
            right.inOrderTraversal(completion)
        }
    }
    
    func preOrderTraversal(_ completion: (T) -> Void) {
        switch self {
        case .empty:
            return
        case let .node(left, value, right):
            completion(value)
            left.preOrderTraversal(completion)
            right.preOrderTraversal(completion)
        }
    }
    
    func postOrderTraversal(_ completion: (T) -> Void) {
        switch self {
        case .empty:
            return
        case let .node(left, value, right):
            left.postOrderTraversal(completion)
            right.postOrderTraversal(completion)
            completion(value)
        }
    }
}

extension BinaryTree: CustomStringConvertible {
    var description: String {
        switch self {
        case let .node(left, value, right):
            return "\n value: \(value), left = [" + left.description + "], right = [" + right.description + "]"
        case .empty:
            return ""
        }
    }
}

extension BinaryTree {
    var count: Int {
        switch self {
        case .empty:
            return 0
        case let .node(left, _, right):
            return left.count + 1 + right.count
        }
    }
}


var tree: BinaryTree<Int> = .empty
tree.insert(7)
tree.insert(10)
tree.insert(2)
tree.insert(1)
tree.insert(5)
tree.insert(9)


print("IN")
tree.inOrderTraversal{ print($0) }
print("PRE")
tree.preOrderTraversal{ print($0) }
print("POST")
tree.postOrderTraversal{ print($0) }

