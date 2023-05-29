import UIKit

var greeting = "Hello, playground"


class Node {
    var val: Int
    var next: Node? = nil
    init(val: Int, next: Node? = nil) {
        self.val = val
        self.next = next
    }
}


class MyLinkedList {
    private var head: Node?
    private var length = 0
    
    init() {
        
    }
    
    func get(_ index: Int) -> Int {
        if index == 0 {
            return head?.val ?? -1
        } else {
            var curr = head
            var localIndex = 1
            while curr?.next != nil {
                curr = curr?.next
                if index == localIndex {
                    return curr?.val ?? 0
                } else {
                    localIndex += 1
                }
            }
        }
        return -1
    }
    
    func addAtHead(_ val: Int) {
        self.head = Node(val: val,
                         next: self.head)
        self.length += 1
    }
    
    func addAtTail(_ val: Int) {
        self.length += 1
        if head == nil {
            self.addAtHead(val)
        } else {
            var curr = head
            while curr?.next != nil {
                curr = curr?.next
            }
            curr?.next = Node(val: val)
        }
    }
    
    
    func addAtIndex(_ index: Int, _ val: Int) {
        if index == 0 {
            self.addAtHead(val)
        } else if self.length == index {
            self.addAtTail(val)
        } else {
            var curr = head
            var localIndex = 1
            while curr?.next != nil {
                var prev = curr
                curr = curr?.next
                guard localIndex < self.length else {
                    break
                }
                if index == localIndex {
                    self.length += 1
                    prev?.next = Node(val: val, next: curr)
                    break
                }
                localIndex += 1
            }
        }
    }
    
    func deleteAtIndex(_ index: Int) {
        if index == 0 {
            self.head = self.head?.next
            self.length -= 1
        } else {
            var curr = head
            var localIndex = 1
            while curr?.next != nil {
                var prev = curr
                curr = curr?.next
                guard localIndex < length else {
                    break
                }
                if localIndex == index {
                    self.length -= 1
                    prev?.next = curr?.next
                    break
                }
                localIndex += 1
            }
        }
    }
}


func executeFor(names: [String], operations: [[Int]]) {
    let myLinkedList = MyLinkedList();
    var index = 0
    while index < names.count {
        let operations = operations[index]
        switch names[index] {
        case "addAtHead":
            myLinkedList.addAtHead(operations[.zero])
        case "deleteAtIndex":
            myLinkedList.deleteAtIndex(operations[.zero])
        case "addAtTail":
            myLinkedList.addAtTail(operations[.zero])
        case "addAtIndex":
            myLinkedList.addAtIndex(operations[.zero], operations[operations.count - 1])
        case "get":
            print(myLinkedList.get(operations[.zero]))
        default: break
        }
        index += 1
    }
}

let names = ["MyLinkedList","addAtHead","addAtTail","addAtIndex","get","deleteAtIndex","get","get","deleteAtIndex","deleteAtIndex","get","deleteAtIndex","get"]
let operations = [[],[1],[3],[1,2],[1],[1],[1],[3],[3],[0],[0],[0],[0]]
executeFor(names: names, operations: operations)
