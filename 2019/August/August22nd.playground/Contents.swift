import UIKit

func divideIntoEvenlySummedSubsets(givenIntegers: [Int]) -> (Set<Int>,Set<Int>) {
    var sumOfArgumentIntegers: Int = 0
    var subsetOne = Set<Int>()
    var subsetTwo = Set<Int>()
    for i in 0..<givenIntegers.count {
        sumOfArgumentIntegers += givenIntegers[i]
    }
    let subsetSumTarget: Int = sumOfArgumentIntegers / 2
    let greatestToSmallestIntegers = givenIntegers.sorted(by: >)
    var sumOfSubsetIntegers: Int = 0
    for integer in greatestToSmallestIntegers {
        if (sumOfSubsetIntegers + integer) <= subsetSumTarget {
            sumOfSubsetIntegers += integer
            subsetOne.update(with: integer)
        } else {
            subsetTwo.update(with: integer)
        }
    }
    return (subsetOne,subsetTwo)
}
divideIntoEvenlySummedSubsets(givenIntegers: [5,10,15,20,25])
