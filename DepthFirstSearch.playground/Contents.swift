import UIKit


class Node {
    var name: String
    var children: [Node]
    
    init(name: String) {
      self.name = name
      children = []
    }

    func addChild(name: String) -> Node {
      let childNode = Node(name: name)
      children.append(childNode)
      return self
    }
    private var isVisitedNode = [String: Bool]()
    func depthFirstSearch(array: inout [String]) -> [String] {
        array.append(name)
        for node in self.children {
            if isVisitedNode[node.name] == nil {
                isVisitedNode[node.name] = true
                self.name = node.name
                self.children = node.children
                depthFirstSearch(array: &array)
            }
        }
      return array
    }
  }
