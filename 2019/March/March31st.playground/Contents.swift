import Foundation
/// This function takes in an unordered list of positive integers and a positive integer K and returns a subset of the ordered list with elements that sum to K (or nil if the subset DNE):
func subsetSum(_ integerList: [Int],_ desiredSum: Int) -> [Int]? {
    // Initialize a copy of the integerList array where the elements are descending in value:
    let sortedList = integerList.sorted(by: >)
    // Initialize an array to store the subset answer:
    var sumElements: [Int] = []
    // Create a mutable copy of the desired sum:
    var currentSum = desiredSum
    // Loop through the integers in the sorted list:
    for integer in sortedList {
        // Check that the integer in the loop is less than or equal to the target sum:
        if integer <= currentSum {
            // Reduce the target sum by the integer that fits:
            currentSum = currentSum - integer
            // Append the integer to the answer subset:
            sumElements.append(integer)
        }
    }
    // Check that the desired sum is met: if so, return the integer subset, if not, return nil:
    if currentSum == 0 {
        return sumElements
    } else {
        return nil
    }
}
subsetSum([12, 1, 61, 5, 9, 2], 24)
subsetSum([12, 1, 61, 5, 9, 2], 25)
