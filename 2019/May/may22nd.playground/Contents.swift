import Foundation

/// Returns the number of columns that need to be removed from a matrix of letters in order so that for each row the elements in each column increases lexographically as the rows increase.
func minimumColumnsToRemove(givenLetterMatrix letters: [[String]]) -> Int {
    
    // MARK: - Properties
    
    // Initialize an array of integers to store the column indicies that need to be removed from the array:
    var targetColumnIndicies: [Int] = []
    // Initialzie the previous row variable with the first row in the argument matrix:
    var previousRow = letters[0]
    // Initialze the current row and column variables (start on second row, first column):
    var row = 1
    var column = 0
    let rowsInMatrix = letters.count
    
    // MARK: - Control Flow Statements
    
    // Loop until the current row is one less than the count of rows in the matrix:
    while row < rowsInMatrix {
        // Initialize the current row:
        let currentRow = letters[row]
        // Loop through the letters in the current row:
        for letter in currentRow {
            // Check current letter is lexographically less than above letter and check to see if we have already accounted for this column already:
            if letter < previousRow[column] && targetColumnIndicies.contains(column) == false {
                // The letter is less than the letter above it and we haven't accounted for this column yet so append it to the target column collection:
                targetColumnIndicies.append(column)
            }
            column += 1
        }
        // Set the previous row equal to the current one:
        previousRow = currentRow
        // Increment the row value and reset the column value:
        row += 1
        column = 0
    }
    
    return targetColumnIndicies.count
}

// Expected return == 1
let argMatrixOne = [
    ["c", "b", "a"],
    ["d", "a", "f"],
    ["g", "h", "i"]
]
// Expected return == 0
let argMatrixTwo = [
    ["a", "b", "c", "d", "e", "f"]
]
// Expected return == 3
let argMatrixThree = [
    ["z", "y", "x"],
    ["w", "v", "u"],
    ["t", "s", "r"]
]
minimumColumnsToRemove(givenLetterMatrix: argMatrixOne)
minimumColumnsToRemove(givenLetterMatrix: argMatrixTwo)
minimumColumnsToRemove(givenLetterMatrix: argMatrixThree)
