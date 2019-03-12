import Foundation
/*
 Given a list of numbers and a number k, return whether any two numbers from the list add up to k.
 
 For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.
 
 Bonus: Can you do this in one pass?
*/

///Given an element in the array, and its "pair-element" (defined by the sum: k - element) check if they are both contained in the array -- if so, return true. Otherwise return false becuase if no pair-element exists for any element in the array there can be no way for any two elements to sum to k.
func arrayElementsExistThatSumToK(array: [Int],k: Int) -> Bool {
    for element in array {
        let pairElement = k - element
        if array.contains(element) && array.contains(pairElement) {
            return true
        }
    }
        return false
}

arrayElementsExistThatSumToK(array: [10, 15, 3, 7], k: 17) //should return true
arrayElementsExistThatSumToK(array: [-1,0,10,7,8,2], k: 12) //should return true
arrayElementsExistThatSumToK(array: [0], k: 0) //should return true
arrayElementsExistThatSumToK(array: [0], k: 1) //should return false

