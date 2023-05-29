import UIKit

var greeting = "Hello, playground"


// 1 - Means

func tournamentWinner(_ competitions: [[String]], _ results: [Int]) -> String {
    var bestPlayer = ""
    var dic = ["": 0]
    for union in zip(competitions, results) {
        let team = union.1 == 0 ? 1 : 0
        let player = union.0[team]
        if let value = dic[player] {
            dic[player] = value + 1
        } else {
            dic[player] = 1
        }
        if let bestValue = dic[bestPlayer],
           let value = dic[player],
           bestValue < value {
            bestPlayer = player
        }
    }
    return bestPlayer
}



tournamentWinner([
    ["HTML", "Java"]],  [0])


