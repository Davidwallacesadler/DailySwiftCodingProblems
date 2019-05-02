import Foundation

func largestPathValue(nodes: String, directedEdges: [(Int, Int)]) -> Int? {
    
    // MARK: - Helper Function
    
    /// This function will count the letters of a string and return the number of the letters in respect to alaphabetical order in the return array
    func letterCount(givenLetters: String) -> [Int] {
        let sortedLetters = givenLetters.sorted()
        var characterCount = 0
        var characters = ""
        var characterCounts = [Int]()
        for character in sortedLetters {
            if characters.isEmpty {
                characters.append(character)
                characterCount += 1
            } else if characters.contains(character) {
                characterCount += 1
            } else {
                // characters does not contain the character
                characterCounts.append(characterCount)
                characters.append(character)
                characterCount = 1
            }
        }
        characterCounts.append(characterCount)
        return characterCounts
    }
    
    // Take the ordered pairs and put them into an array:
    var serializedEdges = [Int]()
    for direction in directedEdges {
        serializedEdges.append(direction.0)
        serializedEdges.append(direction.1)
    }
    
    // Create possible paths that exist in the digraph:
    var possiblePaths = [[Int]]()
    var currentValue = serializedEdges[0]
    var possiblePath = [Int]()
    for vertex in serializedEdges {
        if vertex >= currentValue {
            if possiblePath.contains(vertex) == false {
                possiblePath.append(vertex)
                currentValue = vertex
            }
        } else {
            possiblePaths.append(possiblePath)
            possiblePath = [Int]()
            possiblePath.append(vertex)
            currentValue = vertex
        }
    }
    possiblePaths.append(possiblePath)
    
    // Take the paths and create node lists that show which letters are hit on the way:
    var pathLetters = [String]()
    for path in possiblePaths {
        var nodesPassedThrough = String()
        for value in path {
            let index = nodes.index(nodes.startIndex, offsetBy: value)
            nodesPassedThrough.append(nodes[index])
        }
        pathLetters.append(nodesPassedThrough)
    }
    
    // Count the letters in each pathLetters String and append each max count to the maxPathValues array:
    var maxPathValues = [Int]()
    for letters in pathLetters {
        if let maxPathValue = letterCount(givenLetters: letters).max() {
             maxPathValues.append(maxPathValue)
        }
    }
    
    // Check if there is a loop on the max path value and if so return nil
    guard let maxPathValue = maxPathValues.max() else {
        print("Could not find a maximumPathValue")
        return nil
    }
    if maxPathValue == 1 {
        return nil
    } else {
        return maxPathValue
    }
}

largestPathValue(nodes: "ABACA", directedEdges: [(0,1), (0,2), (2,3), (3,4)])
largestPathValue(nodes: "A", directedEdges: [(0,0)])

