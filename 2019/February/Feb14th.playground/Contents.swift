import Foundation

/*
 
 Given a positive integer n written as abcd... (a, b, c, d... being digits) and a positive integer p we want to find a positive integer k, if it exists, such that the sum of the digits of n taken to the successive powers of p is equal to k * n.
 In other words:
 
 Is there an integer k such as : (a ^ p + b ^ (p+1) + c ^(p+2) + d ^ (p+3) + ...) = n * k
 If it is the case we will return k, if not return -1.
 
 Note: n and p will always be given as strictly positive integers.
 
 EXAMPLE VALUES:
 
 dig_pow(89, 1) should return 1 since 8¹ + 9² = 89 = 89 * 1
 dig_pow(695, 2) should return 2 since 6² + 9³ + 5⁴= 1390 = 695 * 2
 dig_pow(46288, 3) should return 51 since 4³ + 6⁴+ 2⁵ + 8⁶ + 8⁷ = 2360688 = 46288 * 51
 */

func dig_pow(for number: Int, using power: Int) -> Int {
    
    // MARK: - STEP 1: GRAB INDIVIDUAL NUMBERS FROM THE PASSSED IN INTEGER WHILE RETAINING THEIR ORDER (FROM LEFT TO RIGHT).
    
    /// This function will grab every number that makes up the argument Integer and will create an array where each entry is one of those numbers, while preserving order.
    func integerToArrayOfCharacter(number: Int) -> [Int] {
        let integerAsString = String(number)
        let integerAsArrayOfCharacters = Array(integerAsString)
        var integerAsArrayOfIntegers: [Int] = []
        for n in integerAsArrayOfCharacters {
            guard let integerN = Int(String(n)) else {
                print("nil was found while unwrapping optional value - please enter in a number value.")
                return [1]
            }
            integerAsArrayOfIntegers.append(integerN)
        }
        return integerAsArrayOfIntegers
    }
    let numberArray = integerToArrayOfCharacter(number: number)
    
    // MARK: - STEP 2: DEFINE THE DIGPOW EQUATION (LHS).
    
    var count = 0
    var digPowLHS = 0
    while count < numberArray.count {
        let powerExpression = pow(Decimal(numberArray[count]), (power + count))
        let powerExpressionInt = NSDecimalNumber(decimal: powerExpression).intValue
        digPowLHS += powerExpressionInt
        count += 1
    }
    print("CHECK: The sum of powers can be expressed as \(digPowLHS).")
    
    //MARK: - STEP 3: DEFINE K IN TERMS OF THE LEFT HAND SIDE AND NUMBER, CHECK IF THAT FACTOR IS IS NON ZERO
    
    let k = (digPowLHS / number)
    if k != 0 {
        print("Given n = \(number) and p = \(power), we find that k = \(k)")
        return k
    } else {
        print("Given n = \(number) and p = \(power), we find that there is no such positive integer k to satisfy the equation")
        return -1
    }
}
dig_pow(for: 92, using: 1)
dig_pow(for: 89, using: 1)
dig_pow(for: 46288, using: 3)
//dig_pow(for: 0,using: 1)

// MARK: - COMPOST

//func integerFormatter(intType: Int) -> [Int] {
//    var arrayOfIntegers: [Int] = []
//    let integerString = String(intType)
//    let countingNumberRange = 1...9
//    for n in countingNumberRange {
//        let stringN = String(n)
//        if integerString.contains(stringN) {
//            arrayOfIntegers.append(n)
//        }
//    }
//  return arrayOfIntegers
//}


// need to keep the numbers in order - i.e for 695 - 6 should be at index 0, 9 at index 1, 5 at index 2. also doesnt account for repeated numbers.

//integerFormatter(intType: 695)
//integerFormatter(intType: 46288)
//func digPow(for number: Int, using power: Int) -> Int {
//
//    // MARK: - STEP 1: GRAB INDIVIDUAL NUMBERS FROM THE PASSSED IN INTEGER WHILE RETAINING THEIR ORDER (FROM LEFT TO RIGHT).
//
//    /// This function will grab every number that makes up the argument Integer and will create an array where each entry is one of those numbers, while preserving order.
//    func integerToArrayOfCharacter(number: Int) -> [Int] {
//        let integerAsString = String(number)
//        let integerAsArrayOfCharacters = Array(integerAsString)
//        var integerAsArrayOfIntegers: [Int] = []
//        for n in integerAsArrayOfCharacters {
//            let integerN = Int(String(n))!
//            integerAsArrayOfIntegers.append(integerN)
//        }
//        return integerAsArrayOfIntegers
//    }
//    let numberArray = integerToArrayOfCharacter(number: number)
//
//    // MARK: - STEP 2: DEFINE THE DIGPOW EQUATION (LHS).
//
//    var count = 0
//    var digPowLHS = 0
//    while count < numberArray.count {
//        let powerExpression = pow(Decimal(numberArray[count]), (power + count))
//        let powerExpressionInt = NSDecimalNumber(decimal: powerExpression).intValue
//        digPowLHS += powerExpressionInt
//        count += 1
//    }
//    print("CHECK: The sum of powers can be expressed as \(digPowLHS).")
//
//    //MARK: - STEP 3: DEFINE THE DIGPOW EQUATION (RHS), AND COMPARE.
//
//    let factorCheck = (digPowLHS / number)
//    if factorCheck != 0 {
//        var k = 1
//        var digPowRHS = number * k
//        while digPowRHS <= digPowLHS {
//            k += 1
//            let updateRHS = number * k
//            digPowRHS = updateRHS
//        }
//        return k - 1
//    } else {
//        return -1
//    }
//}

