import Foundation

func findStartingIndicies(ofPattern pattern: String,
                          inGivenString targetString: String) -> [Int]{
    var patternStartingIndicies = [Int]()
    var currentPosition = 0
    let patternSize = pattern.count
    while currentPosition < (targetString.count - (patternSize - 1)) {
        let endPosition = currentPosition + (patternSize - 1)
        let startIndex = targetString.index(targetString.startIndex, offsetBy: currentPosition)
        let endIndex = targetString.index(targetString.startIndex, offsetBy: endPosition)
        let grouping = "\(targetString[startIndex...endIndex])"
        if grouping == pattern {
            patternStartingIndicies.append(currentPosition)
        }
        currentPosition += 1
    }
    return patternStartingIndicies
}

let targetString = "abracadabra"
let pattern = "abr"
findStartingIndicies(ofPattern: pattern, inGivenString: targetString)
