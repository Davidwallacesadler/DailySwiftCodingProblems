import Foundation

func smallestIntervalThatStabsEveryInterval(givenIntervals intervals: [(Int,Int)]) -> (Int,Int)? {
    var currentIntervalIndex = 0
    var compareIntervalIndex = 1
    var intersectionSet = Set<Int>()
    while currentIntervalIndex < intervals.count - 1 {
        let currentIntervalTuple = intervals[currentIntervalIndex]
        let currentIntervalSet = Set(currentIntervalTuple.0...currentIntervalTuple.1)
        while compareIntervalIndex < intervals.count {
            let compareIntervalTuple = intervals[compareIntervalIndex]
            let compareIntervalSet = Set(compareIntervalTuple.0...compareIntervalTuple.1)
            let intervalIntersection = currentIntervalSet.intersection(compareIntervalSet)
            if intervalIntersection.isEmpty == false {
                for value in intervalIntersection {
                    intersectionSet.insert(value)
                }
            }
            compareIntervalIndex += 1
        }
        currentIntervalIndex += 1
        compareIntervalIndex = currentIntervalIndex + 1
    }
    guard let minIntersectionValue = intersectionSet.min(), let maxIntersectionValue = intersectionSet.max() else {
        return nil
    }
    return (minIntersectionValue, maxIntersectionValue)
}

let intervals = [(1, 4), (4, 5), (7, 9), (9, 12)]
smallestIntervalThatStabsEveryInterval(givenIntervals: intervals)
