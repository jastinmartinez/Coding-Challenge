import UIKit


func issue(_ s1: String,_ s2: String ) -> Character {
    let s1 = Array(s1)
    let s2 = Array(s2)
    for item in s2 {
        if !s1.contains(item) && s2.contains(item) {
            return item
        }
    }
    return " "
}

issue("abcd", "fabcd")
