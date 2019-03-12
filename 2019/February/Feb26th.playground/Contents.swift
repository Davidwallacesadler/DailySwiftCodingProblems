import UIKit
/*
 You have a positive number n consisting of digits. You can do at most one operation: Choosing the index of a digit in the number, remove this digit at that index and insert it back to another place in the number.
 
 Doing so, find the smallest number you can get.
 
 #Task: Return an array or a tuple or a string depending on the language (see "Sample Tests") with
 
 1) the smallest number you got
 2) the index i of the digit d you took, i as small as possible
 3) the index j (as small as possible) where you insert this digit d to have the smallest number.
 Example:
 
 smallest(261235) --> [126235, 2, 0] or (126235, 2, 0) or "126235, 2, 0"
 126235 is the smallest number gotten by taking 1 at index 2 and putting it at index 0
 
 smallest(209917) --> [29917, 0, 1] or ...
 
 [29917, 1, 0] could be a solution too but index `i` in [29917, 1, 0] is greater than
 index `i` in [29917, 0, 1].
 29917 is the smallest number gotten by taking 2 at index 0 and putting it at index 1 which gave 029917 which is the number 29917.
 
 smallest(1000000) --> [1, 0, 6] or ...
 */


func smallest(_ n: Int) -> (Int, Int, Int) {
    //1. Append Integer digits to an array: first turn into a string to be able to access digits at certain indexes, cast back each digit to an int, append to array.
    var digitArray : [Int] = []
    let intString = String(n)
    var stringIndex = 0
   
    
    while stringIndex < intString.count {
        
        let index = intString.index(intString.startIndex, offsetBy: stringIndex)
        
        if let digit = Int(String(intString[index])) {
                digitArray.append(digit)
                stringIndex += 1
        } else {
            print("ERROR: Cannot cast Character values back to Int type.")
            return (0,0,0)
        }
    }
    
    //2. find the minimum digit at the minumum index -- check for 0 cases
    //CASE 1. 0's, CASE 2. without 0's -- very simple case

    var minDigit = ""
    
    if let minimumDigit = digitArray.min() {
        if digitArray[0] == minimumDigit {
            //pick another min
        }
    if digitArray.contains(0) == true {
    } else {
        
        guard let i = digitArray.firstIndex(of: minimumDigit) else {
            print("ERROR: Could not find the first index of the minumumDigit.")
            return (0,0,0)
        }
            digitArray.remove(at: i)
            minDigit += "\(minimumDigit)"
            for digit in digitArray {
                minDigit += "\(digit)"
            }
        
        if let finalAnswer = Int(minDigit) {
            return (finalAnswer, i, 0)
        }
    }
}
    return (0,0,0)
    
}
smallest(261235)
