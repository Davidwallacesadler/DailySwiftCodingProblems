import Foundation

/// This function will take in a numerator and a denominator and will return the quotient (ignoring the remainder)
func positiveIntegerDivision(numerator: Int, denominator: Int) -> Int {
    // Check if the denominator is greater than the numerator, if so return 0:
    if denominator > numerator {
        print("The quotient for the division of \(numerator) by \(denominator) results in the quotient falling in the range 0...1 => quotient is 0 when casting as Int")
        return 0
    } else {
        // The numerator is less than or equal to the denominator:
        // Initialize a factor counting variable as well as the divisor for the quotient:
        var factor = 0
        var divisor = 0
        // Loop until the divisor is less than or equal to the (numerator - denominator):
        while divisor <= (numerator - denominator) {
            // Increment the divisor by the denominator value, and increment the factor to reflect that value:
            divisor += denominator
            factor += 1
        }
        print("Ignoring the remainder: \(numerator) divided by \(denominator) = \(factor)")
        return factor
    }
}
positiveIntegerDivision(numerator: 2, denominator: 2)



//For fun:
/// This function will take in two positive integers and will return the product of the two of them:
func positiveIntegerMultiplication(operandA: Int, operandB: Int) -> Int {
    // Initialize a counting variable and a result variable:
    var i = 0
    var product = 0
    // Loop until the we have the correct number of sums:
    while i < operandB {
        // Increment the product by the value of operandA, and increment the sum count:
        product += operandA
        i += 1
    }
    print("\(operandA) * \(operandB) = \(product)")
    return product
}
positiveIntegerMultiplication(operandA: 5, operandB: 5)
