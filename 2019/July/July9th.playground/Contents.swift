import Foundation

/// Returns the integers that appear only once in an array of integers where only two integers don't appear twice.
func integersThatAppearOnlyOnceGiven(Integers: [Int]) -> [Int] {
    var integersThatAppearOnce = [Int]()
    let sortedIntegers = Integers.sorted()
    var i = 0
    let endingIndex = sortedIntegers.endIndex
    while i < endingIndex {
        let currentValue = sortedIntegers[i]
        let nextIndex = i + 1
        let slice = sortedIntegers[nextIndex..<endingIndex]
        if slice.contains(currentValue) == false {
            integersThatAppearOnce.append(currentValue)
            i += 1
        } else {
            i += 2
        }
    }
    return integersThatAppearOnce
}

let array = [2,4,6,8,10,2,6,10]
integersThatAppearOnlyOnceGiven(Integers: array)
