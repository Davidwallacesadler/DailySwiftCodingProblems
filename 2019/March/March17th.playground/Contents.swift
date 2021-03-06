import UIKit
//Write an algorithm to justify text. Given a sequence of words and an integer line length k, return a list of strings which represents each line, fully justified.

//More specifically, you should have as many words as possible in each line. There should be at least one space between each word. Pad extra spaces when necessary so that each line has exactly length k. Spaces should be distributed as equally as possible, with the extra spaces, if any, distributed starting from the left.

//If you can only fit one word on a line, then you should pad the right-hand side with spaces. Each word is guaranteed not to be longer than k.

func justifyTextToLength(_ words: [String], _ lineLength: Int) -> [String] {
    var justifiedLines: [String] = []
    var index = 0
    
    var justifiedLine = ""
    var wordsToAdd = ""
        while wordsToAdd.count < lineLength {
            wordsToAdd.append(words[index])
            index += 1
        }
    let check = wordsToAdd
        let spaceCount = lineLength - wordsToAdd.count
    return ["foo"]
}
justifyTextToLength(["the", "quick", "brown", "fox", "jumps", "over", "the", "lazy", "dog"], 16)


