import UIKit

//Goal: Given a string, s, write a function that returns all possible subStrings of s.

///This function will take a string s and will return an array containing all possible substrings:
func subStringsOf(s: String) -> [String] {
    
    //initialize empty array to store substrings:
    var subStringArray: [String] = []
    
    //Initialize counting variables:
    var n = 1
    var beginningIndex = 0
    
    //loop through string groupings until we get down to one character:
    while n < s.count {
        
        //Reset beginning index to 0 when n is incremented:
        beginningIndex = 0
        
        //loop and append subStrings until we have a subString that is at the end of s:
        while (beginningIndex + (s.count - n)) != (s.count + 1) {
            let endingIndex = beginningIndex + ((s.count - 1) - n)
            
            //Define the range of the string we want to append to the subString:
            let upperBound = s.index(s.startIndex, offsetBy: endingIndex)
            let lowerBound = s.index(s.startIndex, offsetBy: beginningIndex)
            
            //Append the range of the string to the subString, and append it to the array. Then move the beginning of the grouping up by one:
            var subString = ""
            subString += s[lowerBound...upperBound]
            subStringArray.append(subString)
            beginningIndex += 1
        }
        n += 1
    }
    return subStringArray
}

subStringsOf(s: "abcba")
