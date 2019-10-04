import Foundation

func longestRunOfOnesInBinary(fromInteger int: Int) -> Int {
    var currentValue = int
    var onePositions = [Int]()
    var adjacentOnesInBinary = 1
    while currentValue > 0 {
        let currentBaseTwoPower = Int(log2(Double(currentValue)))
        onePositions.append(currentBaseTwoPower)
        let amountToMinus = 1 << currentBaseTwoPower
        currentValue -= amountToMinus
        print(currentValue)
    }
    var lastValue: Int?
    for onePosition in onePositions {
        if let lastInspectedPostion = lastValue {
            if lastInspectedPostion == (onePosition - 1) || lastInspectedPostion == (onePosition + 1) {
                adjacentOnesInBinary += 1
            }
            lastValue = onePosition
        } else {
            lastValue = onePosition
        }
    }
    return adjacentOnesInBinary
}

longestRunOfOnesInBinary(fromInteger: 156)
longestRunOfOnesInBinary(fromInteger: 100)





