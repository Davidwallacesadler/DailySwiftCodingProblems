import Foundation

/// Returns the contiguous elements that sum to the target integer. Returns nil if there are no contiguous elements that sum to the target.
func contiguousElementsSumToTarget(givenElements elements: [Int],givenTargetInteger target: Int) -> [[Int]]? {
    
    // MARK: - Properties
    
    // Initialize the contiguous grouping count to be one less than the number of elements:
    var grouping = elements.count - 1
    // Initialize the grouping range to define the array slice:
    var i = 0
    var j = grouping
    // Initialize an array of integer arrays that will hold the solutions array slices:
    var solutions = [[Int]]()
    
    // MARK: - Control Flow
    
    // Loop until the grouping is 2 (smallest contiguous grouping is 2):
    while grouping > 1 {
        //Loop until the end of the grouping is at the last element index:
        while j <= elements.count - 1 {
            // Grab the array slice defined by the grouping:
            let numberSlice = elements[i...j]
            // Loop and create the sum of all the elements in the array slice:
            var sum = 0
            for number in numberSlice {
                sum += number
            }
            // Check if the sum is equal to the target integer: If so append the soltuion array:
            if sum == target {
                var solutionArray = [Int]()
                for element in numberSlice {
                    solutionArray.append(element)
                }
                solutions.append(solutionArray)
            }
            // Increment the grouping up the array:
            j += 1
            i += 1
        }
        // Decrement the grouping count, set the new grouping endpoint, and reset the grouping startpoint:
        grouping -= 1
        j = grouping
        i = 0
    }
    // Check if there were actually solutions in the given array: If not return nil:
    if solutions.isEmpty {
        return nil
    } else {
        // Otherwise return the solutions
        return solutions
    }
}

contiguousElementsSumToTarget(givenElements: [1,2,3,4,5], givenTargetInteger: 9)
