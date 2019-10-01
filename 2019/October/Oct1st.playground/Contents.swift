import Foundation

func findMode(integers: [Int]) -> Int? {
    var currentIndex = 0
    var integerCountPairs = [Int:Int]()
    while currentIndex < integers.count {
        var currentCount = 1
        let currentInteger = integers[currentIndex]
        for int in integers[(currentIndex + 1)..<integers.count] {
            if int == currentInteger {
                currentCount += 1
            }
        }
        if integerCountPairs[currentInteger] == nil {
            integerCountPairs[currentInteger] = currentCount
        }
        currentIndex += 1
    }
    let maxCount = integerCountPairs.max { (arg0, arg1) -> Bool in
        return arg0.value < arg1.value
    }
    guard let mostFrequentInteger = maxCount?.key else {
        return nil
    }
    return mostFrequentInteger
}

findMode(integers: [1,2,3,1,2,3,1,2,2])




