import UIKit

/// This function takes in an array of integers and returns the largest sum of any non adjacent elements:
func largestNonAdjSum(_ a: [Int]) -> Int {
    
    // Inititalize an array to contain the sums of all non-adjacent elements:
    var sumArray: [Int] = []
    
    // Initialize the grouping of elements as being one element apart:
    var group = 2
    
    // Loop until the grouping variable is greater than or equal to the array count:
        while group < a.count {
            
            //I nitialize the beginning of the grouping and the sum:
            var i = 0
            var sum = 0
            
            // Loop until the grouping is greater than or equal to the array count:
            while i < a.count {
                sum += a[i]
                i += group
            }
            
            // Append the non-adjacent sum to the sumArray, and increase the group count by 1:
            sumArray.append(sum)
            group += 1
        }
    
    // Check for the maximum non-adjacent sum in the array, and if so return it:
    if let maxValue = sumArray.max() {
        return maxValue
    } else {
        fatalError("ERROR: Could not find a maximum value in the sumArray")
    }
}
largestNonAdjSum([5,1,1,5])
largestNonAdjSum([2,4,6,2,5])
