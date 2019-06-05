import Foundation

/// Returns true if the target word can be found in the crossword matrix by reading either top-down or left-right.
func doesCrosswordContainTarget(givenCrossword letters: [[String]], targetWord: String) -> Bool {
    
    // MARK: - Helper Methods
    
    /// Returns true if the target word is contained within the word we are checking, or is the same:
    func isTargetContainedWithinWord(givenWord: [String], target: [String]) -> Bool {
        var sameLetterCount = 0
        var positionIndex = 0
        for letter in givenWord {
            if letter == target[positionIndex] {
                sameLetterCount += 1
                positionIndex += 1
            }
        }
        if sameLetterCount == target.count {
            return true
        } else {
            return false
        }
    }
    
    /// Returns true if the target word can be found reading up to down on the matrix:
    func checkUpToDown(letters: [[String]], targetLetters: [String]) -> Bool {
        var truthValue = false
        var currentColumn = 0
        let columnBound = letters[0].count
        var row = 1
        while currentColumn < columnBound {
            var word = [letters[0][currentColumn]]
            while row < letters.count {
                word.append(letters[row][currentColumn])
                row += 1
            }
            if isTargetContainedWithinWord(givenWord: word, target: targetLetters) {
                truthValue = true
                break
            }
            word = []
            row = 1
            currentColumn += 1
        }
        return truthValue
    }
    
    
    /// Returns true if the target word can be forund reading left to right on the matrix:
    func checkLeftToRight(letters: [[String]], targetLetters: [String]) -> Bool {
        var truthValue = false
        var currentRow = 0
        let rowBound = letters.count
        var column = 1
        while currentRow < rowBound {
            var word = [letters[currentRow][0]]
            while column < letters[currentRow].count {
                word.append(letters[currentRow][column])
                column += 1
            }
            if isTargetContainedWithinWord(givenWord: word, target: targetLetters) {
                truthValue = true
                break
            }
            word = []
            currentRow += 1
            column = 1
        }
        return truthValue
    }
        
    
    // MARK: - Properties
    
    var targetLetters: [String] {
        var letters = [String]()
        for letter in targetWord {
            letters.append("\(letter)")
        }
        return letters
    }
    
    // MARK: - Control Flow
    
    if checkUpToDown(letters: letters, targetLetters: targetLetters) || checkLeftToRight(letters: letters, targetLetters: targetLetters) {
        return true
    } else {
        return false
    }
}

let crossWord = [
["F","A","C","I"],
["O","B","Q","P"],
["A","N","O","B"],
["M","A","S","S"]
]
let targetOne = "FOAM"
let targetTwo = "ASS"

doesCrosswordContainTarget(givenCrossword: crossWord, targetWord: targetOne)
doesCrosswordContainTarget(givenCrossword: crossWord, targetWord: targetTwo)
