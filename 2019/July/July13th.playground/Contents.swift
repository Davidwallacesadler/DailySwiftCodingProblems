import UIKit

/// Returns the index of the closest greater number than the number that is at the arguemnt index in the argument integer array, returns nil otherwise. This is done without pre-sorting the array.
func distanceToNextGreatestValue(givenIndex i: Int, givenArray numbers: [Int]) -> Int? {
    // Define the target value, value arrays, and index counter:
    let targetValue = numbers[i]
    var distanceDeltas = [Int]()
    var greaterValues = [Int]()
    var currentIndex = 0
    // Loop through the values in the argument array:
    for value in numbers {
        // Check if the current value is greater than the target value:
        if value > targetValue {
            // If so, get the distance in terms of index and append the value and the distance to their corrosponding arrays:
            let indexDelta = abs(currentIndex - i)
            distanceDeltas.append(indexDelta)
            greaterValues.append(value)
        }
        // If not, increment the index counter:
        currentIndex += 1
    }
    // Check if we can find a minimum distance, the index of that value in the distanceDeltas array, and finally the index of the target value in the argument array:
    guard let minimumDistance = distanceDeltas.min(), let indexOfMinDistance = distanceDeltas.firstIndex(of: minimumDistance), let closestGreaterValueIndex = numbers.firstIndex(of: greaterValues[indexOfMinDistance])  else {
        // If not; there is no minimumDistance/value therefore we return nil:
        return nil
    }
    return closestGreaterValueIndex
}
let argument = [4, 1, 3, 5, 6]
let index = 0

distanceToNextGreatestValue(givenIndex: index, givenArray: argument)
