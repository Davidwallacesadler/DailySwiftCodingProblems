import Foundation

//This solution is written under the assumption that I have taken the lines and turned them into an array:
/// This function will take in an array of integers (line is the index, the integer is the value), and it will return the corrosponding roman numeral expression for each value in the array.
func integerToRomanNumeral(_ input: [Int]) -> [String] {
    
    // Inititalize a counter for the case numbers:
    var caseCounter = 0
    
    // Only want to inspect values after the first line/case, so remove it here from a mutable copy of the input array:
    var lines = input
    lines.remove(at: caseCounter)
    
    // Inititalize a container for the roman numberal expressions:
    var romanNumeralArray: [String] = []
    
    // loop trough the Integer values in the lines array:
    for number in lines {
        
        // Increment the case counter for each value:
        caseCounter += 1
        
        // Initialize an empty string to append numerals to:
        var romanNumeralExpression = ""
        
        // Create a mutable version of the number we want to inspect:
        var mutableNumber = number
        
        // Check if the value is in the target range and if so apply a range of checks from 255 down to 1:
        if number <= 0 || number > 255 {
            let notApplicable = "NA"
            romanNumeralExpression.append(notApplicable)
            
        } else {
            
            // Check from [100,255), and remove any values accounted for:
        if mutableNumber >= 100 && mutableNumber <= 255 {
            let cCount = Int(mutableNumber / 100)
            var cCountInit = 0
            while cCountInit < cCount {
                romanNumeralExpression.append("C")
                cCountInit += 1
            }
            mutableNumber = mutableNumber - (cCount * 100)
        }
        
            // Check from [90,100), and remove any values accounted for:
        if mutableNumber >= 90 && mutableNumber < 100 {
            romanNumeralExpression.append("XC")
            mutableNumber = mutableNumber - 90
        }
        
            // Check from [50,90), and remove any values accounted for:
        if mutableNumber >= 50 && mutableNumber < 90 {
            romanNumeralExpression.append("L")
            mutableNumber = mutableNumber - 50
        }
            // Check from [10,50), and remove any values accounted for:
        if mutableNumber >= 10 && mutableNumber < 50 {
            let xCount = Int(mutableNumber / 10)
            if xCount >= 4 {
                romanNumeralExpression.append("XL")
            } else {
                var xCountInit = 0
                while xCountInit < xCount {
                    romanNumeralExpression.append("X")
                    xCountInit += 1
                }
            }
            mutableNumber = mutableNumber - (xCount * 10)
        }
            // Check if last digit is 9:
        if mutableNumber == 9 {
            romanNumeralExpression.append("IX")
            mutableNumber = mutableNumber - 9
        }
            // Check if last digit is from [5,9):
        if mutableNumber >= 5 && mutableNumber < 9 {
            romanNumeralExpression.append("V")
            let iCount = mutableNumber - 5
            var iCountInit = 0
            while iCountInit < iCount {
                romanNumeralExpression.append("I")
                iCountInit += 1
            }
            mutableNumber = mutableNumber - (5 + iCountInit)
        }
            // Check if the last digit is from [1,4]:
        if mutableNumber == 4 {
            romanNumeralExpression.append("IV")
        } else if mutableNumber > 0 && mutableNumber < 4 {
            let finalICount = mutableNumber
            var finalICountInit = 0
            while finalICountInit < finalICount {
                romanNumeralExpression.append("I")
                finalICountInit += 1
            }
        }
    }
        // Append the String with the desired information for each integer to the romanNumeralArray:
        romanNumeralArray.append("Case #\(caseCounter): \(number) = \(romanNumeralExpression)")
    }
    return romanNumeralArray
}
integerToRomanNumeral([8, 1, 18, 212, 14, 79, 0, 256, 255])

