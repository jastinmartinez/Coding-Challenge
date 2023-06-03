import UIKit

var greeting = "Hello, playground"


class Node {
    var prop: Int
    var next: Node?
    
    init(prop: Int, next: Node? = nil) {
        self.prop = prop
        self.next = next
    }
}
class MinMaxStack {
    private var node: Node? = nil
    
    func peek() -> Int? {
        return node?.prop
    }
    
    func pop() -> Int? {
        var value = self.node?.prop
        self.node = self.node?.next
        return value
    }
    
    func push(number: Int) {
        let node = Node(prop: number)
        node.next = self.node
        self.node = node
    }
    
    func getMin() -> Int? {
        var result: Int? = nil
        var curr = self.node
        while curr != nil{
            result = min(curr?.prop ?? Int.max, result ?? Int.max)
            curr = curr?.next
        }
        return result
    }
    
    func getMax() -> Int? {
        var result: Int? = nil
        var curr = self.node
        while curr != nil{
            result = max(curr?.prop ?? Int.min, result ?? Int.min)
            curr = curr?.next
        }
        return result
    }
}


let instance = MinMaxStack()

instance.push(number: 5)
instance.push(number: 7)
instance.push(number: 2)
instance.getMin()
instance.getMax()
instance.peek()
