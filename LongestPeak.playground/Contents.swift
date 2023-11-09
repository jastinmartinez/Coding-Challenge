import Foundation

func longestPeak(array: [Int]) -> Int {
    return verify(array, at: 1) { (index, array) in
        return index < array.count-1
    } transform: { (index, acc) in

        let current = array[index]
        
        if current > array[index-1]  && current > array[index+1] {

            let left = verify(array, at: index) { (index, array) in
                return index < array.count-1 && array[index] > array[index+1]
            } transform: { (index, acc) in
                return (index + 1, acc + 1)
            }

            let right = verify(array, at: index) { (index, array) in
                return index > 0 && array[index] > array[index-1]
            } transform: { (index, acc) in
                return (index - 1, acc + 1)
            }

            return(index + 1, max(acc, (left + right) + 1))
        }
        return (index + 1, acc)
    }
}


private func verify(_ array: [Int],
                    at index: Int,
                    isTrue: ((Int,[Int])) -> Bool,
                    transform: ((Int, Int)) -> (Int, Int)) -> Int {
    var (index, acc) = transform((index, 0))
    while isTrue((index, array)) {
        (index, acc) = transform((index, acc))
    }
    return acc
}

print(longestPeak(array:[1, 1, 1, 2, 3, 10, 12, -3, -3, 2, 3, 45, 800, 99, 98, 0, -1, -1, 2, 3, 4, 5, 0, -1, -1]))
