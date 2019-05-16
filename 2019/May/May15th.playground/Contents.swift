import Foundation

func minimumParenthesisChanges(givenParentheses parentheses: String) -> Int {
    // Initialize change count variable to store the number of changes to be made:
    var count = 0
    // Initialize a constant equal to the last character in the String to check later:
    let lastCharacter = parentheses.last
    // Initialize the desired first character in the parentheses String:
    var currentParenthesis: Character = "("
    // Loop through the parenthesis characters in the parentheses String:
    for parenthesis in parentheses {
        // Check if the parenthesis in the String is equal to the desired one, increment the count by 1 if so:
        if parenthesis != currentParenthesis {
            count += 1
        } else {
            // The parenthesis is equal to the desired one:
            // Swap the current parenthesis:
            if currentParenthesis == "(" {
                // Check if the String is ending with ( and if so it must be accounted for:
                if parenthesis == lastCharacter {
                    count += 1
                }
                currentParenthesis = ")"
            } else {
                currentParenthesis = "("
            }
        }
    }
    return count
}
minimumParenthesisChanges(givenParentheses: "()())()")
minimumParenthesisChanges(givenParentheses: ")(")
