import UIKit
/*
 Given the mapping a = 1, b = 2, ... z = 26, and an encoded message, count the number of ways it can be decoded.
 
 For example, the message '111' would give 3, since it could be decoded as 'aaa', 'ka', and 'ak'.
 
 You can assume that the messages are decodable. For example, '001' is not allowed.
 */


func messageCount(integerString: String) -> Int {
    
    //BASE CASE: The message can always be taken to individual digits and be mapped to A through I (if 0 is in the String, we are accounting for it here.)
    var possibleMessageCount = 1
    
    
    //Grab character at index offset from the initial index (@ value: count) - start at the second character in the string:
    var count = 1
    var previousCount = 0
    var pairCount = 0
    
    
    while count < integerString.count {
    
    let index = integerString.index(integerString.startIndex, offsetBy: count)
    let elementAtIndex = Int(String(integerString[index]))
    let previousIndex = integerString.index(integerString.startIndex, offsetBy: previousCount)
        
    if let elementAtPreviousIndex = Int(String(integerString[previousIndex])) {
            //Case 1: the element at the count index is 0 and the element at the previous index is less than 3 (we have accounted for this in the BASE CASE since 0 MUST be interpreted as a pair with the previous element in the String))
            if elementAtIndex == 0 && elementAtPreviousIndex < 3 {
                previousCount += 1
                count += 1
            } else {
                //Case 2: the element at the previous index is 1, and the element at the count index is between 1 and 9 (so we can form 2 possible letters from this pair - one of which we have already accounted for in the BASE CASE)
            if elementAtPreviousIndex == 1 {
                possibleMessageCount += 1
                pairCount += 1
                previousCount += 1
                count += 1
            } else {
                //Case 3: the element at the previous index is 2, and the element at the count index is between 1 and 7 - forms 1 new pair
                if elementAtPreviousIndex == 2 && elementAtIndex != 8 && elementAtIndex != 9 {
                    possibleMessageCount += 1
                    pairCount += 1
                    previousCount += 1
                    count += 1
            } else {
                    //Case 4: the element at the previous index is greater than 2 (from 3 to 9) or equal to 0, and the element at the count index is between 1 and 9 ( so we can only form 1 possible letter that we have already accounted for - so don't increment the possibleMessageCountHere)
                previousCount += 1
                count += 1
                    }
                }
            }
        }
   }
    //TODO: Find the correct Relationship between the pair count and how many possible messages are added
    if pairCount == 3 {
        possibleMessageCount += 1
    }
    if pairCount > 3 {
        possibleMessageCount += pairCount
    }
     return possibleMessageCount
}

messageCount(integerString: "111")
// MANUAL CHECK:
// aaa
// ka
// ak. Answer => 3

messageCount(integerString: "567")
//MANUAL CHECK:
//efg. Answer => 1

messageCount(integerString: "99985")
//MANUAL CHECK:
//iiihe. Answer 1

messageCount(integerString: "10102")
//MANUAL CHECK:
//jjb. Answer 1


messageCount(integerString: "111111")
// MANUAL CHECK:
// aaaaaa
// kaaaa
// akaaa
// aakaa
// aaaka
// aaaak
// kkaa
// aakk
// kaka
// akak
// kkk => 11
//
// 5 pairs => 5 added possibilites
// messageCount(integerString: "111111") => 11
// ( 2n - 1 )!

messageCount(integerString: "1124")
/*
 MANUAL CHECK:
 aabd
 kbd
 alb
 aax ---
 kx
 
 3 pairs => 1 added possibility
 */
messageCount(integerString: "1111111")
/*
 MANUAL CHECK:
 aaaaaaa
 kaaaaa
 akaaaa
 aakaaa
 aaakaa
 aaaaka
 aaaaak----
 kkaaa
 aakka
 kakaa
 akaka
 kkka
 akkk
 kkkk
 
 6 pairs => 7 added possibilites
 messageCount(integerString: "111111") => 11
 */










//MARK : - Compost


//func messageCount(integerString: String) -> Int {
//
//    // This dictionary defines the 1-1 mapping: map: ["1","26"] -> ["a","z"]
//    let numeralToAlphaMap = ["1" : "a",
//                             "2" : "b",
//                             "3" : "c",
//                             "4" : "d",
//                             "5" : "e",
//                             "6" : "f",
//                             "7" : "g",
//                             "8" : "h",
//                             "9" : "i",
//                             "10" : "j",
//                             "11" : "k",
//                             "12" : "l",
//                             "13" : "m",
//                             "14" : "n",
//                             "15" : "o",
//                             "16" : "p",
//                             "17" : "q",
//                             "18" : "r",
//                             "19" : "s",
//                             "20" : "t",
//                             "21" : "u",
//                             "22" : "v",
//                             "23" : "w",
//                             "24" : "x",
//                             "25" : "y",
//                             "26" : "z" ]
//    //Need to break up string down to its component pieces and add them to an array and compare to index values -- then append to a final array
//    //1. break down the string into individual characters
//    //2. break down the string into pairs of characters (and if there is 1 odd charcter remaining - append it) - check if values are below 26
//
//    var pairCount = 1
//    while pairCount <= 2 {
//
//
//    //1.
//        ///MAKE ALL OF THIS A FUNCTION __ CALL IT FOR THIS SITUATION _ THEN CALL IT FOR THE PAIR COUNT 2 SITUATION
//    var stringIndex = 0
//    var integerStringArray : [String] = []
//
//    //Make a check for pairs here
//    while stringIndex < integerString.count {
//
//    let index = integerString.index(integerString.startIndex, offsetBy: stringIndex)
//    integerStringArray.append("\(integerString[index])")
//    stringIndex += 1
//    }
//
//    var convertedString = ""
//    var stringArray : [String] = []
//    for number in integerStringArray {
//        //grab element in the dictionary at key = number
//        if let letter = numeralToAlphaMap[number] {
//             convertedString += letter
//        } else {
//            print("ERROR: There was no element in the array to append")
//        }
//
//    }
//    stringArray.append(convertedString)
//        pairCount += 1
//
//    return stringArray.count
//    }
//    return 1
//}
//
//
//messageCount(integerString: "8228932")
//



//while count < intString.count {
//
//    let index = intString.index(intString.startIndex, offsetBy: count)
//    intString.insert(" ", at: index)
//    count += 2
//    let check2 = intString[index]
//}
//container.append(intString)

