import Foundation

func canBeMadeNonDecreasing(givenArray numbers: [Int]) -> Bool {
    var previousValue = numbers[0]
    var negativeDeltas = [Int]()
    var i = 1
    while i < numbers.count {
        let currentValue = numbers[i]
        let delta = currentValue - previousValue
        if delta < 0 {
            negativeDeltas.append(delta)
        }
        previousValue = currentValue
        i += 1
    }
    if negativeDeltas.count > 1 {
        print("The argument array cannot be made non-decreasing by changing only one value.")
        return false
    } else {
        print("The argument array can be made non-decreasing.")
        return true
    }
}
canBeMadeNonDecreasing(givenArray: [10,5,7])
canBeMadeNonDecreasing(givenArray: [10,5,1])


func makeNonDecreasing(givenArray values: [Int]) -> [Int]? {
    var numbers = values
    var previousValue = numbers[0]
    var deltas = [Int]()
    var negativeDeltas = [Int]()
    var i = 1
    while i < numbers.count {
        let currentValue = numbers[i]
        let delta = currentValue - previousValue
        deltas.append(delta)
        if delta < 0 {
            negativeDeltas.append(delta)
        }
        previousValue = currentValue
        i += 1
    }
    if negativeDeltas.count > 1 {
        print("The argument array cannot be made non-decreasing by chang ing only one value")
        return nil
    } else {
        guard let indexOfTargetValue = deltas.firstIndex(of: negativeDeltas[0]) else {
            print("The argument array was already non-decreasing")
            return numbers
        }
        var newValue = numbers[indexOfTargetValue]
        newValue = newValue + negativeDeltas[0] - 1
        numbers[indexOfTargetValue] = newValue
        print("The argument array was made non-decreasing by replacing \(values[indexOfTargetValue]) with \(newValue) at index \(indexOfTargetValue).")
        return numbers
    }
}
makeNonDecreasing(givenArray:[10,5,7])



