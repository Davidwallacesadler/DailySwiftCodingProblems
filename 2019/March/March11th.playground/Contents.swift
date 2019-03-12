import UIKit

/// This function takes in a 'dictionary' of words and a string made up of those words (no spaces), and returns the original phrase as an array (reconstructing the giving phrase):
func returnPhrase(_ wordSet: [String], _ phrase: String) -> [String] {
    // Initialize final answer array, and create mutable copies of phrase and wordset parameters:
    var answerArray: [String] = []
    var words = wordSet
    var phraseWithoutSpaces = phrase
    
    // Initialize the array index counting variable:
    var arrayIndex = 0
    
    // Loop until the array index is incremented to the maximum words Array index:
    while arrayIndex < words.count {
        
        // Grab the word at arrayIndex from words array:
    let wordToCompare = words[arrayIndex]
        
        // If the word to compare is longer than the phrase we don't want to compare them, otherwise we do:
        if wordToCompare.count > phraseWithoutSpaces.count {
            arrayIndex += 1
        } else {
            
            // Initialize lower and upper bounds of the substring of the phrase that is the length of the word we want to compare (starting at the beginning of phrase):
            let lowerBound = phraseWithoutSpaces.startIndex
            let upperBound = phraseWithoutSpaces.index(phraseWithoutSpaces.startIndex, offsetBy: wordToCompare.count - 1)
            
            // If the word to compare is equal to the substring of the same length: append the word to the answerArray, remove that word from the words Array and the phraseWithoutSpaces String, then reset the arrayIndex variable. Otherwise, increment to the next array index.
            if wordToCompare == phraseWithoutSpaces[lowerBound...upperBound] {
                answerArray.append(wordToCompare)
                phraseWithoutSpaces.removeSubrange(lowerBound...upperBound)
                words.remove(at: arrayIndex)
                arrayIndex = 0
            } else {
                arrayIndex += 1
            }
        }
    }
    return answerArray
}
returnPhrase(["quick","brown","the","fox"], "thequickbrownfox")
returnPhrase(["bed", "bath", "bedbath", "and", "beyond"], "bedbathandbeyond")
returnPhrase(["indepth","in","depth","solutions"], "indepthsolutions")
returnPhrase(["colton","hates","cheese"], "butreallyhelovesit")




//Given a dictionary of words and a string made up of those words (no spaces), return the original sentence in a list. If there is more than one possible reconstruction, return any of them. If there is no possible reconstruction, then return null.
//
//For example, given the set of words 'quick', 'brown', 'the', 'fox', and the string "thequickbrownfox", you should return ['the', 'quick', 'brown', 'fox'].
//
//Given the set of words 'bed', 'bath', 'bedbath', 'and', 'beyond', and the string "bedbathandbeyond", return either ['bed', 'bath', 'and', 'beyond] or ['bedbath', 'and', 'beyond'].

// create counting variable for looping thourhg the array and reset it when we hit the right word
//grab wordSet[0] - compare to first bit of string - if so then remove the subrange, and append the word and remove it, then just do the same thing again.



//    var phraseWithoutSpaces = phrase
//    var answerArray: [String] = []
//    var initStringIndexCount = 0
//
//    for word in wordSet {
//        let wordLength = word.count - 1
//        initStringIndexCount = 0
//        while answerArray.contains(word) == false && initStringIndexCount < phraseWithoutSpaces.count {
//            //compare substring of phraseWithoutSpaces with word
//            let lowerBound = phraseWithoutSpaces.index(phraseWithoutSpaces.startIndex, offsetBy: 0)
//            let upperBound = phraseWithoutSpaces.index(phraseWithoutSpaces.startIndex, offsetBy: initStringIndexCount + wordLength)
//            if word == phraseWithoutSpaces[lowerBound...upperBound] {
//                phraseWithoutSpaces.removeSubrange(lowerBound...upperBound)
//                answerArray.append(word)
//            } else {
//                initStringIndexCount += 1
//            }
//        }
//
//    }
//      return answerArray
