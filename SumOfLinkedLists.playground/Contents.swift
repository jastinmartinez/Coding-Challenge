import Foundation

class LinkedList {
    var value: Int
    var next: LinkedList?
    
    init(value: Int) {
        self.value = value
    }
}

func sumOfLinkedLists(_ linkedListOne: LinkedList, _ linkedListTwo: LinkedList) -> LinkedList? {
    var node: LinkedList? = linkedListOne
    var result: LinkedList? = nil
    enum State {
        case start
        case next
        case result
        case end
    }
    var state: State = .start
    while state != .end {
        switch state {
        case .start:
            if node != nil {
                node = node?.next
            } else {
                node = linkedListTwo
                state = .next
            }
        case .next:
            if node != nil {
                node = node?.next
            } else {
                state = .result
            }
        case .result:
            state = .end
        case .end:
            break
        }
    }
    return result
}
