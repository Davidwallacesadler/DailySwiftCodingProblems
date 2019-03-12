import UIKit
func wallpaper(_ l: Double,_ w: Double,_ h: Double) -> String {
    if l == 0 || w == 0 || h == 0 {
        return "zero"
    }
    let numbers = ["zero", "one", "two", "three", "four", "five",
                   "six", "seven", "eight", "nine", "ten",
                   "eleven", "twelve", "thirteen", "fourteen", "fifteen",
                   "sixteen", "seventeen", "eighteen", "nineteen", "twenty"]
    let lengthOfWallArea = (2 * w) + (2 * l)
    var heightWallPapered = 0.52
    var lengthWallPapered = 10.0
    var count = 1
    var leftoverWallPaper = 0.0
    
    while heightWallPapered <= h {
        while lengthWallPapered < lengthOfWallArea {
            lengthWallPapered += 10.0
            count += 1
        }
        leftoverWallPaper = lengthWallPapered - lengthOfWallArea
        lengthWallPapered = leftoverWallPaper
        heightWallPapered += 0.52
    }
    let check = heightWallPapered - 0.52
    let check2 = lengthWallPapered
    let leftoverRollArea = lengthWallPapered * 0.52
    let leftoverWallArea = (h - check) * (lengthOfWallArea)
    
    if leftoverRollArea < leftoverWallArea {
        var areaRemaining = leftoverWallArea - leftoverRollArea
        while areaRemaining > 0 {
            count += 1
            areaRemaining -= 5.2
        }
    }
    let lengthUsed = Double(count * 10)
    let extraLength = lengthUsed * 0.15
    let extraRolls = Int(round(extraLength / 10))
    return numbers[(count + extraRolls)]
}
wallpaper(4.1, 3.3, 3.32) // 11
//wallpaper(4.4, 3.0, 2.75) // 10


//l 4.4 w 3.0 h 2.75 => 10
//4.1 w 3.3 h 3.32=> 11
