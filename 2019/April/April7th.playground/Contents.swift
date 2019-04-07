import Foundation

/// This function takes an array slice of type Int and returns the sum of elements that are contained within the slice.
func maxSumOfArraySlice(_ arraySlice: ArraySlice<Int>) -> Int {
    var sum = 0
    for number in arraySlice {
        sum += number
    }
    return sum
}

/// This function takes in an array of integers and returns the largest sum of contiguous subranges.
func maxSumSubrangesOf(_ argArray: [Int]) -> Int {
    
    // Initialize an array to contain maximum values:
    var maximumArray: [Int] = []
    
    // Initialize counting indecies
    var i = 0
    var groupingSize = argArray.count - 2
    
    // Check that the argument array has less than 3 elements:
    if argArray.count <= 2 {
        groupingSize = 1
    }
    
    // Loop until the grouping size becomes negative:
    while groupingSize >= 0 {
        
        // Loop until the current grouping is at the end of the argument array indices:
        while i + groupingSize <= argArray.count - 1 {
            // Create a maximum for the grouping range to be the starting index plus the group size:
            let j = i + groupingSize
            // Grab array slice from the argument array and call the maxSumOfArraySlice method to get the max of that slice:
            let subArray = argArray[i...j]
            maximumArray.append(maxSumOfArraySlice(subArray))
            // Increment the begining of the grouping
            i += 1
        }
        // Reset the position of the grouping and reduce it by 1:
        i = 0
        groupingSize -= 1
    }
    
    // Return the maximum sum value:
    guard let maxValue = maximumArray.max() else {
        return 0
    }
    if maxValue < 0 {
        return 0
    } else {
         return maxValue
    }
}
maxSumSubrangesOf([34, -50, 42, 14, -5, 86])
maxSumSubrangesOf([-5, -1, -8, -9])
