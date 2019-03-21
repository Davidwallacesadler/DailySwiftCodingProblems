import UIKit

/// This function takes in two strings and determines how many substitutions must be made to turn one String into the other.
func editDistance(_ s1: String, _ s2: String) -> Int {
    // Initialize counting variables:
    var differenceCount = 0
    var i = 0
    // Pass Strings into an array in order to use the min() and max() methods:
    let stringArray = [s1, s2]
    guard let loopString = stringArray.min() else {
        fatalError("No minumum String exists in the array")
    }
    guard let compareString = stringArray.max() else {
         fatalError("No maximum String exists in the array")
    }
    // Check that the Strings are different before running the loop:
    if loopString != compareString {
        // Loop until the last Character of the loop String has been compared and increment accordingly:
        while i < loopString.count {
            let characterIndex = loopString.index(loopString.startIndex, offsetBy: i)
            let loopCharacter = String(loopString[characterIndex])
            let compCharacter = String(compareString[characterIndex])
            if loopCharacter != compCharacter {
                differenceCount += 1
                i += 1
            } else {
                i += 1
            }
        }
    }
    // Characters exceeding the loop String must be added to the edit distance as well:
    let leftOverCharacters = compareString.count - loopString.count
    return differenceCount + leftOverCharacters
}
editDistance("i", "jim")
editDistance("kit", "kat")
editDistance("kit", "kit")
editDistance("david", "kayla")
editDistance("sadler", "sudweeks")
