import Foundation

func breakString(_ toLength: Int,_ givenString: String) -> [String]? {
    var characterCount = 0
    var linesOfText = [String]()
    var newLine = ""
    
    for character in givenString {
        if characterCount == 0 && character == " " {
            characterCount += 1
        } else {
            if characterCount == 10 && character == " " {
                characterCount = 0
                newLine.remove(at: newLine.index(newLine.startIndex, offsetBy: 9))
                linesOfText.append(newLine)
                newLine = ""
            } else {
                if characterCount < toLength {
                    newLine.append(character)
                    characterCount += 1
                } else {
                    linesOfText.append(newLine)
                    characterCount = 1
                    newLine = ""
                    newLine.append(character)
                }
            }
        }
    }
    let remainingString = newLine
    linesOfText.append(remainingString)
    
    if linesOfText.count == 1 {
        return nil
    } else {
        return linesOfText
    }
    
}
breakString(10, "The quick brown fox jumps over the lazy dog.")
