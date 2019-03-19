import UIKit
//Run-length encoding is a fast and simple method of encoding strings. The basic idea is to represent repeated successive characters as a single count and character. For example, the string "AAAABBBCCDAA" would be encoded as "4A3B2C1D2A".
//Implement run-length encoding and decoding. You can assume the string to be encoded have no digits and consists solely of alphabetic characters. You can assume the string to be decoded is valid.

/// This function takes in a string consisting of alphabetic characters implements run-length encoding:
func encode(_ alphaString: String) -> String {
    
    // Initialize return String and counting variables
    var alphaNumericString = ""
    var i = 0
    var j = 1
    var characterCount = 1
    
    // loop until j (upper bound of counting variables) equal to the length of the alphabetic String:
    while j < alphaString.count {
        
        // Initialize String indexes and grab a pair of characters:
        let indexI = alphaString.index(alphaString.startIndex, offsetBy: i)
        let indexJ = alphaString.index(alphaString.startIndex, offsetBy: j)
        let character = String(alphaString[indexI])
        let nextCharacter = String(alphaString[indexJ])
        
        // Check if the first chracter is equal to the next one, and if so increase the character count and increment the pair. Otherwise the characters are not equal and so we append the character with its count to the alphaNumericString then reset characterCount, and increment the pair:
        if character == nextCharacter {
            characterCount += 1
            i += 1
            j += 1
        } else {
            alphaNumericString.append("\(characterCount)" + character)
            i += 1
            j += 1
            characterCount = 1
        }
        // Check if the next character is the last one in the string and if so append it and its count:
        if j == alphaString.count {
            alphaNumericString.append("\(characterCount)" + nextCharacter)
        }
    }
    return alphaNumericString
}
encode("AAAABBBCCDAA")

/// This function takes in an alpha numeric string and implements run-length decoding:
func decode(_ alphaNumericString: String) -> String {
    
    // Initialize return String and counting variables
    var alphaString = ""
    var i = 0
    var j = 1
    
    // Loop until j (upper bound of counting variables) is equal to the length of the alpha numeric String:
    while j < alphaNumericString.count {
        
        // Initialize String indexes and grab the number and character pair:
        let numberIndex = alphaNumericString.index(alphaNumericString.startIndex, offsetBy: i)
        let characterIndex = alphaNumericString.index(alphaNumericString.startIndex, offsetBy: j)
        let number = Int(String(alphaNumericString[numberIndex]))
        let character = alphaNumericString[characterIndex]
        
        // Initialize counting variable to append the correct number of characters:
        var characterCount = 0
        
        // Conditionally bind number since Integer casting could result in nil (number: Int?):
        if let characterNumber = number {
            
            // Loop until the character count is equal to the character number and append the desired character each time:
            while characterCount < characterNumber {
                alphaString.append(character)
                characterCount += 1
            }
        }
        // Increment the pair:
        i += 2
        j += 2
    }
    return alphaString
}
decode("4A3B2C1D2A")
