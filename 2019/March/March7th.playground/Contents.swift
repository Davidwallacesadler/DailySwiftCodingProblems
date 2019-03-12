import UIKit
//Use the function in march6th.playground to solve the problem:
/*
 Given an integer k and a string s, find the length of the longest substring that contains at most k distinct characters.
 
 For example, given s = "abcba" and k = 2, the longest substring with k distinct characters is "bcb" and has length 3.
 */
func subStringsOf(_ s: String) -> [String] {
    var subStringArray: [String] = []
    var n = 1
    var beginningIndex = 0
    while n < s.count {
        beginningIndex = 0
        while (beginningIndex + (s.count - n)) != (s.count + 1) {
            let endingIndex = beginningIndex + ((s.count - 1) - n)
            let upperBound = s.index(s.startIndex, offsetBy: endingIndex)
            let lowerBound = s.index(s.startIndex, offsetBy: beginningIndex)
            var subString = ""
            subString += s[lowerBound...upperBound]
            subStringArray.append(subString)
            beginningIndex += 1
        }
        n += 1
    }
    return subStringArray
}

///This function will take a string 's' and an integer 'k', and will return a tuple containing the longest substring that has only k distinct characters, and the length of that string.
func longestSubStringWithKDistinctChars(s: String, k: Int) -> (String, Int) {
    
    // Initialize substringArray with all possible substrings of 's' by calling our subStringsOf method:
    let subStringArray = subStringsOf(s)
    
    // initialize array for storing substrings that contain k distinct characters:
    var finalStringArray: [String] = []
    
    // loop through all possible substrings of 's':
    for substring in subStringArray {
        
        // Inititalize counting variables and letterArray (which will store the distinct letters that are in each substring):
        var before = 0
        var after = 1
        var letterArray: [String] = []
        
        // Loop through characters of substring until we have compared all of the characters:
        while after < substring.count {
            
            // Initialize String indices using the before / after counter variables:
            let i = substring.index(substring.startIndex, offsetBy: before)
            let j = substring.index(substring.startIndex, offsetBy: after)
            
            // Grab the characters at index i and index j:
            let characterOne = String(substring[i])
            let characterTwo = String(substring[j])
            
            // Check if the characters are distinct and whether or not the letter array already contains either of the characters:
            if characterOne != characterTwo && letterArray.contains(characterOne) == false {
                letterArray.append(characterOne)
                }
            if characterOne != characterTwo && letterArray.contains(characterTwo) == false {
                letterArray.append(characterTwo)
            }
                // Increment counting variables to continue looping through the characters of the substring:
                before += 1
                after += 1
            
                }
            // Check if the number of distinct letters in the substring is equal to k, and if so append to finalStringArray:
            if letterArray.count == k {
                finalStringArray.append(substring)
                
            }
    }
    // Check if the finalStringArray is empty, and if so give an 'error' answer:
    if finalStringArray.isEmpty {
        return ("No Strings matched predicate!", 0)
    }
    
    // Grab the first element in the finalStringArray and return it (which should be the largest string based on how the substring array is generated and how the above loop is performed):
    let answerString = finalStringArray[0]
    return (answerString, answerString.count)
}

longestSubStringWithKDistinctChars(s: "abccbd", k: 2)
