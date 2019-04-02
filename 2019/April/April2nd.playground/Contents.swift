import UIKit

func inversionCountOf(_ unsortedArray: [Int]) -> Int {
    
    var i = 0
    var j = 1
    var inversionCount = 0
    
    while i < unsortedArray.count - 1 {
        while j < unsortedArray.count {
            if unsortedArray[i] > unsortedArray[j] {
                inversionCount += 1
            }
            j += 1
        }
        j = i + 2
        i += 1
    }
    
    return inversionCount
}

inversionCountOf([2, 4, 1, 3, 5])
inversionCountOf([5, 4, 3, 2, 1])
inversionCountOf([1, 2, 3, 4, 5])

