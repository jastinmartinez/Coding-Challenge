import UIKit
class LinkedList: Hashable {
    var value: Int
    var next: LinkedList?
    
    init(value: Int) {
        self.value = value
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(ObjectIdentifier(self).hashValue)
    }
    
    static func == (left: LinkedList, right: LinkedList) -> Bool {
        return left === right
    }
}

func middleNode(_ linkedList: LinkedList) -> LinkedList? {
    var curr: LinkedList? = linkedList
    var next: LinkedList? = linkedList
    while next?.next != nil {
        curr = curr?.next
        next = next?.next?.next
    }
    return curr
}
