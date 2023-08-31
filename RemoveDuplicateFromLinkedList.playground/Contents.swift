import UIKit

/**
 Complexity
 Space O(1)
 Time O(N)
 */

class LinkedList {
   var value: Int
   var next: LinkedList?

   init(value: Int) {
     self.value = value
   }
 }

 func removeDuplicatesFromLinkedList(_ linkedList: LinkedList) -> LinkedList {
     var curr: LinkedList? = linkedList
     while curr != nil {
         var prev = curr
         curr = curr?.next
         if prev?.value ?? 0 == curr?.value ?? 0 {
             prev?.next = curr?.next
             curr = prev
         } else {
             prev?.next = curr
         }
     }
   return linkedList
 }
