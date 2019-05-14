import Foundation

func islandCount(givenMatrix matrix: [[Int]]) -> Int {
    
    var currentRow = 1
    var currentColumn = 1
    var islandCount = 0
    var iPositions = [(Int,Int)]()
    
    for row in matrix {
        for value in row {
            if value == 1 {
                let rowPosition = currentRow
                let columnPosition = currentColumn
                iPositions.append((rowPosition,columnPosition))
            }
            currentColumn += 1
        }
        currentColumn = 1
        currentRow += 1
    }
    var lastPosition = iPositions[0]
    var i = 1
    while i < iPositions.count {
        let currentPosition = iPositions[i]
        if (currentPosition.0 - lastPosition.0) >= 1 && (lastPosition.1 - currentPosition.1) >= 1 {
            islandCount += 1
        }
        lastPosition = currentPosition
        i += 1
    }
    return islandCount
}
let exampleMatrix = [
    [1, 0, 0, 0, 0],
    [0, 0, 1, 1, 0],
    [0, 1, 1, 0, 0],
    [0, 0, 0, 0, 0],
    [1, 1, 0, 0, 1],
    [1, 1, 0, 0, 1]
]
islandCount(givenMatrix: exampleMatrix)
