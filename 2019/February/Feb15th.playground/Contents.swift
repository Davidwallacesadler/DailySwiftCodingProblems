import UIKit
/*
 Coding decimal numbers with factorials is a way of writing out numbers in a base system that depends on factorials, rather than powers of numbers.
 In this system, the last digit is always 0 and is in base 0!.
 
 The digit before that is either 0 or 1 and is in base 1!. The digit before that is either 0, 1, or 2 and is in base 2!. More generally, the nth-to-last digit in always 0, 1, 2, ..., or n and is in base n!.
 
 Given numbers will be positive.
 
 
 Example : decimal number 463 is coded as "341010"
 
 because 463 (base 10) = 3×5! + 4×4! + 1×3! + 0×2! + 1×1! + 0×0!
 
 If we are limited to digits 0...9 the biggest number we can code is 10! - 1.
 
 So we extend 0..9 with letters A to Z. With these 36 digits we can code up to 36! − 1 = 37199332678990121746799944815083519999999910 (base 10)
 
 We code two functions, the first one will code a decimal number and return a string with the factorial representation : "dec2FactString(nb)"
 
 the second one will decode a string with a factorial representation and produce the decimal representation : "factString2Dec(str)".
 

 func dec2FactString(_ nb: Int) -> String {
 // your code
 }
 func factString2dDec(_ s: String) -> Int {
 // your code
 }
*/

func dec2FactString(_ nb: Int) -> String {
    
    //This function will apply the factoiral operation to any given positive integer:
    func makeFactorial(_ number: Int) -> Int {
        let factorialRange = 1...number
        var factorialProduct = 1
        for number in factorialRange {
            factorialProduct *= number
        }
        return factorialProduct
    }
    
    //variables (containers and counters):
    var count = 1
    var factorialArray : [Int] = []
    var factorialString = ""
    var factorialElement = 1
    let alphaBetArray = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    
    //This loop will find all factorial representations (from 1! and up) that are smaller than the argument Integer, and will append them to the factorialArray:
    while factorialElement <= nb {
        factorialElement = makeFactorial(count)
        if factorialElement <= nb {
        factorialArray.append(factorialElement)
        }
        count += 1
    }
    var sortedFactorialArray = factorialArray.sorted(by: >)

    //This variable is just equal to the argument integer. It will be the remainder after we apply the operations in the loop:
    var remainder = nb
    var indexCount = 0
    
    //Check if the number passed in is greater than 9! - if so use the alpha characters and reduce the remainder to enter in the lower loop:
    //TODO: - actually make this work for the provided case.
    if remainder >= 3628800 {
        remainder -= 3628800
        factorialString += alphaBetArray[indexCount]
        sortedFactorialArray.remove(at: indexCount)
        indexCount += 1
    }
    
    //This loop will find the dividend (the number we want to append) and will also create the next remainder for each element in the factorial array starting with the highest order factorial
    for factorial in sortedFactorialArray {
        let dividend = remainder / factorial
        let product = dividend * factorial
        remainder -= product
        factorialString += String(dividend)
    }
    
    //Append "0" here to account for 0 * ( 0! ):
    return factorialString + "0"
    
}
dec2FactString(36288000)
dec2FactString(463)
dec2FactString(2982)

