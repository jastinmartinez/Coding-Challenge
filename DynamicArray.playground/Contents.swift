import Foundation


class Node {
    var value: Int
    var next: Node? = nil
    
    init(value: Int, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}


class DynamicArray {
    private var capacity: Int
    private var root: Node?
    private var size: Int = 0
    
    init(capacity: Int = 1) {
        self.capacity = capacity
    }
    
    func get(i: Int) -> Int? {
        var curr = self.root
        var index = 0
        while curr != nil {
            if index == i {
                return curr?.value
            }
            index += 1
            curr = curr?.next
        }
        return nil
    }
    
    func insert(i: Int, n: Int) {
        var curr = self.root
        var index = 0
        guard self.capacity > self.size else {
            return
        }
        while curr != nil {
            var prev = curr
            guard n > 0 else {
                self.root = Node(value: i, next: prev)
                break
            }
            if (index + 1) == n {
                curr?.next = Node(value: i, next: prev?.next)
                self.size += 1
                break
            }
            index += 1
            curr = curr?.next
        }
    }
    
    func pushback(i: Int) {
        self.size += 1
        if self.capacity < self.size {
            self.resize()
        }
        guard self.root != nil else {
            self.root = Node(value: i)
            return
        }
        var curr = self.root
        while curr?.next != nil {
            curr = curr?.next
        }
        curr?.next = Node(value: i)
    }
    
    func popback() -> Int? {
        defer {
            if self.size > -1  {
                self.size -= 1
            }
        }
        guard self.size > 1 else {
            var prev = self.root
            self.root = nil
            return prev?.value
        }
        var curr = self.root
        while curr?.next?.next != nil {
            curr = curr?.next
        }
        let toBeRemove = curr?.next
        curr?.next = nil
        return toBeRemove?.value
    }
    
    func getSize() -> Int {
        return self.size
    }
    
    func getCapacity() -> Int {
        return self.capacity
    }
    
    func resize() {
        self.capacity *= 2
    }
}


let dynamicArray = DynamicArray(capacity: 5)
for item in 1...21 {
    dynamicArray.pushback(i: item)
}

dynamicArray.getAll()
print(dynamicArray.getCapacity())
