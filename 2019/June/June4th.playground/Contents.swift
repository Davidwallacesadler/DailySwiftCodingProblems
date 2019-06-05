import Foundation

/// Checks if the given integer array can be thought of as hops from index 0, and if the hops can reach the last index returns True. Otherwise returns false.
func valuesGetToLastIndex(givenHopValues hops: [Int]) -> Bool {
    // Define the destination index:
    let destination = hops.count - 1
    // Define the index that is currently 'selected':
    var current = 0
    // Loop while the current index is less than the last one:
    while current < destination {
        // Grab the selected value from the integer array:
        let currentHopValue = hops[current]
        // Check if the current value is 0 and not the final index, if so we are stuck there so we want to break out of the loop:
        if currentHopValue == 0 && current != destination {
            break
        }
        // Increment the index by the hop value:
            current += currentHopValue
    }
    // Check if the current index is at the destination:
    if current != destination {
        return false
    } else {
        return true
    }
}

let hopValuesOne = [2,0,1,0]
let hopValuesTwo = [1,1,0,1]

valuesGetToLastIndex(givenHopValues: hopValuesOne)
valuesGetToLastIndex(givenHopValues: hopValuesTwo)
