import Foundation


/*
 
 input: array of positives integer
 [Query Wating Time] = amount of time before it's excution starts
 
 original input
 [3, = 0
 2, = 3 + 0
 1, = 2 + 3 + 0
 2, = 1 + 2 + 3 + 0
 6] = 2 + 1 + 2 + 3 + 0
 
 equal [22]
 
 if we ordered the elements then the min time it's reduced
 
 [1, = 0
 2, = 1 + 0
 2, = 2 + 1 + 0
 3, = 2 + 2 + 1 + 0
 6] = 3 + 2 + 2 + 1 + 0
 
 equal [17]
 */


func minimumWaitingTime(_ queries: inout [Int]) -> Int {
    var isSorted = true
    var index = 0
    var total = 0
    while (index + 1) < queries.count {
        if queries[index] > queries[index + 1] {
            queries.swapAt(index, index + 1)
            isSorted = false
        }
        if isSorted {
            total += queries[0...index].reduce(0, +)
        }
        index += 1
    }
    if !isSorted  {
        total = minimumWaitingTime(&queries)
    }
    return total
}

var queries = [3, 2, 1, 2, 6]
minimumWaitingTime(&queries)
