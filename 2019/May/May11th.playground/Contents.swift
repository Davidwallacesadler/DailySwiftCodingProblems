import Foundation

func generateSquareTimesTable(givenDimension N: Int) -> [[Int]] {
    var table = [[Int]]()
    var currentValue = 1
    var currentRow = 1
    var currentColumn = 1
    while currentRow <= N {
        var row = [Int]()
        while currentColumn <= N {
            row.append(currentValue)
            currentValue += currentRow
            currentColumn += 1
        }
        table.append(row)
        currentColumn = 1
        currentRow += 1
        currentValue = currentRow
    }
    return table
}

func numberInTableCount(tableSize: Int, desired: Int) -> Int {
    let table = generateSquareTimesTable(givenDimension: tableSize)
    var xCount = 0
    for row in table {
        for value in row {
            if value == desired {
                xCount += 1
            }
        }
    }
    return xCount
}

numberInTableCount(tableSize: 6, desired: 12)
