
/*
 Write a function:
 
 public func solution(_ A : inout [Int]) -> Int
 
 that, given an array A of N integers, returns the smallest positive integer (greater than 0) that does not occur in A.
 
 For example, given A = [1, 3, 6, 4, 1, 2], the function should return 5.
 
 Given A = [1, 2, 3], the function should return 4.
 
 Given A = [−1, −3], the function should return 1.
 
 Write an efficient algorithm for the following assumptions:
 
 N is an integer within the range [1..100,000];
 each element of array A is an integer within the range [−1,000,000..1,000,000].
 */
import Foundation
import XCTest

func solution(_ A: inout [Int]) -> Int {
    
    let arrayASet = Set(A)
    guard let maximumEntryValue = A.max() else {
        print("There was no maximum value of A")
        return -1
    }
    guard let minumumEntryValue = A.min() else {
        print("There was no minimum value of A")
        return -1
    }

    let totalRange = minumumEntryValue...maximumEntryValue
    let totalRangeSet = Set(totalRange)
    let negativeIntRange = (-1000)...(-1)
    let negativeIntSet = Set(negativeIntRange)
    
    let integersNotContainedInA = arrayASet.symmetricDifference(totalRangeSet)
    let positiveIntsNotInA = integersNotContainedInA.subtracting(negativeIntSet)
  
    if positiveIntsNotInA.isEmpty && maximumEntryValue >= 0{
        return A.max()! + 1
            } else if positiveIntsNotInA.isEmpty && maximumEntryValue <= 0 {
            return 1
                } else {
                    for n in positiveIntsNotInA.sorted() {
                        if n > 0 {
                            return n
                        } else if n <= 0 {
                            return 1
                        }
                }
        }
    return integersNotContainedInA.min()!
}

var A = [1,3,4]
let soln = solution(&A)
print("\(soln)")

// A = [-20,0,1,2,3,6,20] PASSED (ANSWER: 4)



//Unit Testing

class myTestCase: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    override func tearDown() {
        super.tearDown()
    }
    
    }
    func testExample() {
        //given - Set up values needed for the example
        var A = [1, 3, 6, 4, 1, 2]
        //when - execute the code being tested
        solution(&A)
        //then - assert the result you expect
        XCTAssertEqual(solution(&A), 5, "This is wrong")
    }

myTestCase.defaultTestSuite
