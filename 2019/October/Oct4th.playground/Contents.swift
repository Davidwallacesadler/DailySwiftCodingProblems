import Foundation
// given an n digit number:
// Storage: O(n^2)
// Complexity: O()??
// Restriction: Cannot cast the integer as a String!
func isIntegerAPalindrome(givenInteger int: Int) -> Bool {
    var currentValue = int
    var digits = [Int]()
    var lastExponent: Int?
    while currentValue > 0 {
        var minusCount = 0
        let largestPowerOfTenThatFits = Int(log10(Double(currentValue)))
        let amountToMinus = Int(pow(10.0, Double(largestPowerOfTenThatFits)))
        while currentValue >= amountToMinus {
            currentValue -= amountToMinus
            minusCount += 1
        }
        if let lastPowerOfTen = lastExponent {
            // can assume that the last power of 10 is greater than the current one
            let rangeOfExponentValues = largestPowerOfTenThatFits.distance(to: lastPowerOfTen)
            var zeroCount = rangeOfExponentValues - 1
            while zeroCount > 0 {
                digits.append(0)
                zeroCount -= 1
            }
        }
        lastExponent = Int(largestPowerOfTenThatFits)
        digits.append(minusCount)
    }
    var digitIndex = 0
    let reversedDigits = digits.reversed()
    for digit in reversedDigits {
        if digit != digits[digitIndex] {
            return false
        }
        digitIndex += 1
    }
    return true
}

isIntegerAPalindrome(givenInteger: 101)
isIntegerAPalindrome(givenInteger: 121)
isIntegerAPalindrome(givenInteger: 678)
