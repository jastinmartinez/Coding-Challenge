import UIKit


enum BinaryTree: Equatable {
    case empty
    indirect case node(BinaryTree, Int, BinaryTree)
    
    mutating func insert(_ value: Int) {
        self = self.addNewNode(value)
    }
    
    private func addNewNode(_ newValue: Int) -> BinaryTree {
        switch self {
        case .empty:
            return .node(.empty, newValue, .empty)
        case let .node(left, value, right):
            if newValue > value {
                return .node(left, value, right.addNewNode(newValue))
            } else {
                return .node(left.addNewNode(newValue), value, right)
            }
        }
    }
    
    func printAll() {
        self.getAll(node: self)
    }
    
    private func getAll(node: BinaryTree) {
        switch node {
        case .empty:
            return
        case let .node(lhs, value, lhr):
            print(value)
            getAll(node: lhs)
            getAll(node: lhr)
        }
    }
}

extension BinaryTree: CustomStringConvertible {
    var description: String {
        switch self {
        case .empty:
            return ""
        case let .node(left, value, right):
            return "\n value: \(value), left = [\(left)], right = [\( right)]"
        }
    }
}

var binaryTree: BinaryTree = .empty

for value in 1...30 {
    binaryTree.insert(Int.random(in: value...1000))
}

print(binaryTree.description)

func branchSums(root: BinaryTree) -> [Int] {
    var sumList = [Int]()
    getValue(node: root, currSum: 0, list: &sumList)
    return sumList
}

func getValue(node: BinaryTree, currSum: Int, list: inout [Int]) {
    switch node {
    case .empty:
        return
    case let .node(lhs, value, lhr):
        let sum = currSum + value
        if lhs == .empty && lhr == .empty {
            list.append(sum)
        }
        getValue(node: lhs, currSum: sum, list: &list)
        getValue(node: lhr, currSum: sum, list: &list)
    }
}


branchSums(root: binaryTree)
