import UIKit

///This function will take in an array and will print out the maximum value of all the subArrays of length k:
func maxValueOfSubArrayLengthK(_ a: [Int], _ k: Int) {
    //Initialize counting variables:
    var lowerBound = 0
    var upperBound = k - 1
    
    //Loop until upperbound is greater than or equal to the array count:
    while upperBound < a.count {
        
        //Define the subarray of the desired length:
        let subArray = a[lowerBound...upperBound]
        
        //PO maximum value and increment counting variables:
        print("\(subArray.max() ?? 0)")
        lowerBound += 1
        upperBound += 1
    }
}
maxValueOfSubArrayLengthK([10,5,2,7,8,7], 3)
