import UIKit

for number in 1...100 {
    let fizz = "Fizz"
    let buzz = "Buzz"
    if number % 3 == 0 && number % 5 == 0 {
        print(fizz + " " + buzz)
    } else if number % 3 == 0 {
        print(fizz)
    } else if number % 5 == 0 {
        print(buzz)
    } else {
        print(number)
    }
}
