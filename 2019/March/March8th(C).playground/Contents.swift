import UIKit

func wallpaper(_ l: Double,_ w: Double,_ h: Double) -> String {
    if l == 0 || w == 0 {
        return "zero"
    }
    let numbers = ["zero", "one", "two", "three", "four", "five",
                   "six", "seven", "eight", "nine", "ten",
                   "eleven", "twelve", "thirteen", "fourteen", "fifteen",
                   "sixteen", "seventeen", "eighteen", "nineteen", "twenty"]
    let totalWallArea = (2 * (l * h)) + (2 * (w * h)) // units: m^2
    let paperRollArea = 5.2 // units: m^2
    let rollsToCoverAreaDouble = totalWallArea / paperRollArea // units: roll  ( m^2 / m^2/roll )
    var rollsToCoverAreaInt = Int(round(rollsToCoverAreaDouble)) // number of rolls
    var rollAreaToLength = (Double(rollsToCoverAreaInt) * 10) * 0.15
    
    while rollAreaToLength > 0 {
        rollsToCoverAreaInt += 1
        rollAreaToLength -= 10
    }
    
    return numbers[rollsToCoverAreaInt]
}
wallpaper(6.3, 4.5, 3.29) //16 //16
wallpaper(6.1, 2.0, 3.15) //12
//wants 15% more LENGTH than we need
//how long is 10.9 rolls? 109 m? say 11 => 111 m
//6.1 w 2.0 h 3.15 => 12
//6.3 w 4.5 h 3.29 => 16


// create 1 area at a time and
