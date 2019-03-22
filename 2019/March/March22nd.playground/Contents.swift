import Foundation

/// 
func runningMedian(_ integerArray: [Int]) -> [Double] {
    var i = 0
    var loopArray: [Int] = []
    var medianArray: [Double] = []
    var sum = 0
    while i < integerArray.count  {
        let integer = integerArray[i]
        loopArray.append(integer)
        if loopArray.count < 3 {
                sum += integer
                let median = Double(sum) / Double(loopArray.count)
                medianArray.append(median)
        } else if loopArray.count == 3 {
            let median = Double(loopArray.sorted()[1])
            medianArray.append(median)
        } else {
            let medianIndexOne = (loopArray.count / 2) - 1
            let medianIndexTwo = (loopArray.count / 2)
            let median = Double((loopArray.sorted()[medianIndexOne] + loopArray.sorted()[medianIndexTwo])) / 2.0
            medianArray.append(median)
        }
        i += 1
    }
    return medianArray
}
runningMedian([2, 1, 5, 7, 2, 0, 5])
