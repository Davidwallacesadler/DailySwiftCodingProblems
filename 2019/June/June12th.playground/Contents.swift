import Foundation

/// Returns a String that reverses the order of the words in the orginal String while keeping the delimiters in the same position.
func reverseWords(inString phrase: String) -> String {
    
    // Initialize an array for storing each word in the phrase:
    var wordBank = [String]()
    // Initalize an array for stroing the delimiters in the phrase:
    var delimiterBank = [Character]()
    // Initialize a starting and ending Integer to form a range for a word:
    var start = 0
    var current = 0
    // Initialize a return String:
    var reversedString = String()
    var currentDelimiterIndex = 0
    
    // Loop through every character in the phrase String:
    for character in phrase {
        // Check if the current character is a delimiter ( i.e not a letter):
        // if charcter is a delimiter and the next character is not a delimiter
        if character.isLetter == false {
            // Grab the delimiter, and grab the word up to the delimiter, append both to their respetive Arrays:
            // if the last character was a delimieter -- add this delimeter to the last one
//            if phrase[phrase.index(phrase.startIndex, offsetBy: current + 1)].isLetter == false {
//
//            }
            let delimiter = character
            let beginning = phrase.index(phrase.startIndex, offsetBy: start)
            let end = phrase.index(phrase.startIndex, offsetBy: current - 1)
            let word = String(phrase[beginning...end])
            wordBank.append(word)
            delimiterBank.append(delimiter)
            start = current + 1
            // Check if we have reached the last index:
        } else if current == phrase.count - 1 {
            // Grab the last word and append it to the wordBank:
            let beginning = phrase.index(phrase.startIndex, offsetBy: start)
            let end = phrase.index(phrase.startIndex, offsetBy: current)
            let word = String(phrase[beginning...end])
            wordBank.append(word)
        } // if the next character is a delimeter
        // Increment the current index counter:
            current += 1
    }
    // Initialize an Integer that represents last index of the wordBank:
    var currentWordIndex = wordBank.count - 1
    // Loop until the current word index is 0:
    while currentWordIndex >= 0 {
        // Append the word:
        reversedString.append("\(wordBank[currentWordIndex])")
        // Check that the delimiter index is within bounds:
        if currentDelimiterIndex <= delimiterBank.count - 1 {
            // Append the delimiter:
            reversedString.append(delimiterBank[currentDelimiterIndex])
        }
        // Increment the delimieterIndex, decrement the wordIndex:
        currentDelimiterIndex += 1
        currentWordIndex -= 1
    }
    return reversedString
}
let stringOne = "hello/world:here"
let stringTwo = "hello/world:here/"
//let stringThree = "hello//world:here"
reverseWords(inString:stringOne)
reverseWords(inString: stringTwo)
