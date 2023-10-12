import UIKit

func optimalFreelancing(_ jobs: [[String: Int]]) -> Int {
    let days = 7
    var alreadySetUp = Array(repeating: 0, count: days)
    for job in jobs {
        if let deadline = job["deadline"], var payment = job["payment"] {
            var posibleIndex = min(deadline, days)-1
            while posibleIndex > -1 {
                if payment > alreadySetUp[posibleIndex] {
                    let oldPayment = alreadySetUp[posibleIndex]
                    alreadySetUp[posibleIndex] = payment
                    payment = oldPayment
                }
                posibleIndex -= 1
            }
            
            if posibleIndex > -1 {
                alreadySetUp[posibleIndex] = payment
            }
        }
    }
    return alreadySetUp.reduce(0, +)
}

let jobs = [["deadline": 1, "payment": 1],
            ["deadline": 2, "payment": 2],
            ["deadline": 2, "payment": 2],
            ["deadline": 7, "payment": 1],
            ["deadline": 4, "payment": 3],
            ["deadline": 4, "payment": 5],
            ["deadline": 3, "payment": 1]]

let jobs1 = [["deadline": 8, "payment": 1],
            ["deadline": 2, "payment": 2],
             ["deadline": 2, "payment": 1]]


print(optimalFreelancing(jobs))
