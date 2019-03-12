import UIKit

func minimumClassroomNumber(_ intervals: [(Int, Int)]) -> Int {
    //Sort array so that tuples are going from smallest to largest
    let sortedIntervals = intervals.sorted(by: {$0 < $1})
    return 1
}
