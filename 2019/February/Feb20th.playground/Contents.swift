import Foundation
/*
 RECASTING THE QUESTION:
 Its the year 2097 and the world uses a single currency called Credits. Credits have no denominations IE no fractional component. Imagine your friend inherits a fortune of Credits and he's making you guess how much he has, becuse he's a dick and doesn't want to tell you outright. He tells you that he has between m and n Credits and:
 
    1. If he was to buy 9 cars costing c each, he'd only have 1 Credit left.
    2. And if he was to buy 7 boats at b each, I'd only have 2 Credits left.
 
 Can you generate a list of possible fortune amounts that he might have for different values of c and b?
 IE can you take in m, and n start values and return an array of [("M: possibleCreditsYourFriendFound", "B: boatValue", "C: carValue")
 
 Examples:
 howmuch(1, 100) => [["M: 37", "B: 5", "C: 4"], ["M: 100", "B: 14", "C: 11"]]
 howmuch(1000, 1100) => [["M: 1045", "B: 149", "C: 116"]]
 howmuch(10000, 9950) => [["M: 9991", "B: 1427", "C: 1110"]]
 howmuch(0, 200) => [["M: 37", "B: 5", "C: 4"], ["M: 100", "B: 14", "C: 11"], ["M: 163", "B: 23", "C: 18"]]
 
 */
func howMuch(_ m: Int, _ n: Int) -> [(String, String, String)] {
    
    //Allow the user to pass in range values in any way they please - create an array and grab the maximum and minimum values - then use those to define the
    let arrayToCheck = [m, n]
    
    guard let maximumCreditValue = arrayToCheck.max() else {
        print("There was no maximum value in the array - please enter more than one value")
        return []
    }
    guard let minimumCreditValue = arrayToCheck.min() else {
        print("There was no minimum value in the array - please enter more than one value")
        return []
    }
    
    //Create a range that contains all possible fortunes between the smaller amount and the larger amount.
    let fortuneRange = minimumCreditValue...maximumCreditValue
    
    //Ceate an empty array thats ready to store tuple values we want to return.
    var tupleArray: [(String, String, String)] = []
    
    //Loop through possible fortunes and check against our two equations
    for possibleFortune in fortuneRange {
        
        //Need to cast the possibleFortune as a Double so that division results in decimals.
        let possibleFortuneDouble = Double(possibleFortune)
        
        //From prompt: possibleFortune - 9 * c = 1 => c = (possibleFortune - 1) / 9. carValue will have decimals if the division is not clean - compare it to carValueWhole to see if it is. Need there to be no decimal in the print tuple so create an carValueForPrint.
        let carValue = Double((possibleFortuneDouble - 1) / 9)
        let carValueWhole = round(carValue)
        let carValueForPrint = Int(carValueWhole)
        
        //From prompt: possibleFortune - 7 * b = 2 => b = (possibleFortuve - 2) / 7. boatValue will have decimals if the division is not clean - compare it to boatValueWhole to see if it is. Need there to be no decimal in the print tuple so create an boatValueForPrint.
        let boatValue = Double((possibleFortuneDouble - 2) / 7)
        let boatValueWhole = round(boatValue)
        let boatValueForPrint = Int(boatValueWhole)
        
        //Check if the car and boat values equal their whole value and if so create a tuple with those values and append them to our tupleArray.
        if carValue == carValueWhole && boatValue == boatValueWhole {
            let stringTuple = ("M: \(possibleFortune)", "B: \(boatValueForPrint)", "C: \(carValueForPrint)")
            tupleArray.append(stringTuple)
        }
    }
    return tupleArray
}

// SEARCH COMPLEXITY: N * (1) => O(N) => the time it takes to run through the algorithm grows linearly as the number of elements, N, grows linearly.
howMuch(10000, 9950)


