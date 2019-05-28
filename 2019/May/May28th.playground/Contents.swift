import Foundation

/// Returns the size of the largest consecutive subsequence of a given integer array:
func sizeOfLongestConsecutiveSubsequence(givenArray numbers: [Int]) -> Int  {
    
    // MARK: - Properties
    
    let sorted = numbers.sorted()
    var previous = sorted[0]
    var subSequenceSizes = [Int]()
    var count = 1
    var i = 1
    
    // MARK: - Control Flow
    
    while i < sorted.count {
        let current = sorted[i]
        if current == (previous + 1) {
            count += 1
        } else {
            subSequenceSizes.append(count)
            count = 1
        }
        previous = current
        i += 1
    }
    if count >= 1 {
        subSequenceSizes.append(count)
    }
    guard let max = subSequenceSizes.max() else {
        return 0
    }
    return max
}

let argArrayOne = [100, 4, 200, 1, 2, 3]
let argArrayTwo = [102, 104, 107, 105, 106, 103, 1, 2, 3, 4]

sizeOfLongestConsecutiveSubsequence(givenArray: argArrayOne)
sizeOfLongestConsecutiveSubsequence(givenArray: argArrayTwo)

