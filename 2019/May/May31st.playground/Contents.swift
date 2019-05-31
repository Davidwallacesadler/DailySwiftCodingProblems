import Foundation

/// Returns the smallest subString of a given string that contains all the characters in the characterSet. Returns nil if the there are no subString matches.
func shortestSubstring(ofString phrase: String, givenTargetCharacters characterSet: Set<Character>) -> String? {
    
    // MARK: - Stored properties
    var subStringGrouping = phrase.count - 1
    var i = 0
    var j = subStringGrouping
    var solution = String()
    var solutions = [String]()
    
    // MARK: - Control Flow
    
    while subStringGrouping >= characterSet.count {
        while j < phrase.count {
            let startIndex = phrase.index(phrase.startIndex, offsetBy: i)
            let endIndex = phrase.index(phrase.startIndex, offsetBy: j)
            let substring = String(phrase[startIndex...endIndex])
            let substringCharacters: Set<Character> = Set(substring)
            if characterSet.isSubset(of: substringCharacters) {
                solution.append(substring)
                solutions.append(solution)
                solution = ""
            }
            j += 1
            i += 1
        }
        subStringGrouping -= 1
        j = subStringGrouping
        i = 0
    }
    
    if solutions.isEmpty {
        return nil
    } else {
        guard let smallestSubstring = solutions.min() else {
            print("Error finding the minumum substring - returning the first solution")
            return solutions[0]
        }
        return smallestSubstring
    }
}

let characterSet: Set<Character> = ["a","e","i"]
let givenPhrase = "figehaeci"

shortestSubstring(ofString: givenPhrase, givenTargetCharacters: characterSet)
