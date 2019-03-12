import UIKit

//  *PROMPT*  Make a method that prints every X number between 0 and Y.

// NOTES:
//we know we are taking multiple input parameters, and multiple output parameters (do they need to be explicitly specified though?)

// From Notes: functions defined without a return type return a special type called Void - return values can be ignored. (I had explicitly specified a return type of Int initially and didn't know how to make use of the return value in this case)

//taking in a single Int - want to make a range of numbers and want to iterate over them - use a for-in loop to iteratively print

// PSEUDO: for currentvalue in range { if currentvalue < magnitude of range { take print currentvalue and add currentvalue += 1} else if current value = magnitude of range { print magnitudeOfRange -=1 } }


func printNumbersInGivenRange(End: Int) {
    
let initialValue = 0 //initial value will always be zero for this problem.
    
    //need to have a check for positive or negative end range value (otherwise we get an error when defining upper/lower bounds of the range)
    
    if initialValue < End {
        let posNumberRange =  initialValue...End
        for value in posNumberRange {
            if value < End {
                print(value)
                value + 1
                } else if value > End {
                    print(End)
                    }
            }
    } else if initialValue > End {
            let negNumberRange = End...initialValue
            for value in negNumberRange {
                if value > End {
                    print(value)
                    value - 1
                } else if value < End {
                    print(End)
                    }
            }
    }
    //??? I feel like the way i did this works - but probably violates DRY ???
    
    //BlackDiamond: now we want a prime number check
    //prime:= only divisors are 1 and itself. should we use the modulo operator % ?
    //pseudo: take range and imput into an array. take array values and apply mod2 and mod3. want to get rid of numbers that yield mod2 = 0 and need to check numbers that yield mod3 = 0 to see if they are in fact prime.
    
    //Take printed values and put them in an array - does this need to go into each loop?
    
    //let negNumberArray = []
    //??? how to take printed values and put them into an array?
  
}

// Test values --- (works for any non-zero integer)
printNumbersInGivenRange(End: -20)
print("END")
printNumbersInGivenRange(End: 20)


