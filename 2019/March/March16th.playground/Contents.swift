import UIKit

//Given an array of time intervals (start, end) for classroom lectures (possibly overlapping), find the minimum number of rooms required.
//
//For example, given [(30, 75), (0, 50), (60, 150)], you should return 2.

// This question can be seen as also finding the maximun number of intersection of timer intervals.

///This function will take in an array of tuples representing the start and endpoints of time intervals and will return the minimum number of rooms required if a class was being held during each of the intervals.
func minumumClassrooms(_ times: [(Int, Int)]) -> Int {
    // Initialize empty array to store the intersection counts for each interval:
    var intersectionCounts: [Int] = []
    
    // Initialize a index counting variable:
    var currentIndex = 0
    
    // Loop through intervals in the argument array:
    for tuple in times {
        
        // Initialize the intersection counting variable:
        var intersectionCount = 0
        
        // Create a range from the tuple being looped, and cast it as a Set:
        let rangeOne = Set(tuple.0...tuple.1)
        
        // Initialize the next Index counting variable to access the next tuples for comparisson:
        var nextIndex = currentIndex + 1
        
        // Loop until the next index is less than the count of the argument array:
        while nextIndex < times.count {
            
            // Create a second range, and cast it as a Set:
            let tupleTwo = times[nextIndex]
            let rangeTwo = Set(tupleTwo.0...tupleTwo.1)
            
            // Use the intersection Set operation to see if the intervals overlap (non-empty):
            let intersection = rangeOne.intersection(rangeTwo)
            if intersection.isEmpty == false {
                intersectionCount += 1
            }
            // Increment to the next index:
            nextIndex += 1
        }
        // Append the Intersection count to the answer array and increment the current index:
        intersectionCounts.append(intersectionCount)
        currentIndex += 1
    }
    
    // Check that the intersection count array is non-empty and conditionally bind the max value to return it:
    if intersectionCounts.isEmpty == false {
        if let maxCheck = intersectionCounts.max() {
            return maxCheck
        }
        // Check that the argument array is non-empty and if so return 1 class room (absolute minimum for any classes to be held):
    } else if times.isEmpty == false {
        return 1
    }
    // Return 0 if the argument array is empty:
    return 0
}
minumumClassrooms([(30, 75), (0, 50), (60, 150)])

//IDEA: rather than forming intervals we could just compare tupleOne.0 & tupleTwo.0, and tupleOne.1 & tupleTwo.1 and use that to from "intersections"
