import Foundation

/// This function will return the possible letter combinations that can result from a given digit - letter mapping and a string of numbers (Digits)
func possibleLetters(given mapping: Dictionary<Character,[String]>, digits: String) -> [String] {
    // Initialize an array to store the first digit in the digits string:
    var initialLetterCombination: [String] {
        var letters = [String]()
        guard let initialLetters = mapping[digits[digits.startIndex]] else {
            print("ERROR: The selected digit does not match any keys in the given mapping.")
            return []
        }
        for letter in initialLetters {
            letters.append(letter)
        }
        return letters
    }
    // Set the current letter Combiniations to the intial ones:
    var currentLetterCombinations: [String] = initialLetterCombination
    // Create an array that will act as a buffer for storing the final letter combinations:
    var finalLetterCombinations = [String]()
    // Create a mutable copy of the digits string so we can remove the first digit already accounted for:
    var digitsAfterFrist = digits
    digitsAfterFrist.remove(at: digitsAfterFrist.startIndex)
    // Loop through the digits in the digitsAfterFirst:
    for digit in digitsAfterFrist {
        // Grab the current letters using the mapping (pass in the key to get the values):
            guard let currentLetters = mapping[digit] else {
                print("ERROR: The selected digit does not match any keys in the given mapping.")
                return []
            }
        // Loop through the combinations letters:
            for combinationLetter in currentLetterCombinations {
                // Loop through the letters in the current mapping:
                for letter in currentLetters {
                    finalLetterCombinations.append("\(combinationLetter)\(letter)")
                }
            }
        // Set the combinationLetters to the finalLetter Buffer array:
        currentLetterCombinations = finalLetterCombinations
        // Reset the finalLetter Buffer array for the next letter:
        finalLetterCombinations = []
        }
      return currentLetterCombinations
    }

let simpleMapping: Dictionary<Character,[String]> = [
    "4": ["g","h","i"],
    "3": ["d","e","f"],
    "2": ["a","b","c"]

]

possibleLetters(given: simpleMapping, digits: "234")
