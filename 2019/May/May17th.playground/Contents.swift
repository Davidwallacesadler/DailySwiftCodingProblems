import Foundation

func mergeOverlapping(intervals: [(Int,Int)]) -> [(Int,Int)] {
    
    // MARK: Helper function
    
    func setsFromIntervals(givenIntervals: [(Int,Int)]) -> [Set<Int>] {
        var sets = [Set<Int>]()
        for interval in givenIntervals {
            sets.append(Set(interval.0...interval.1))
        }
        return sets
    }
    
    // MARK: Properties
    
    let sortedIntervals = intervals.sorted(by: <)
    let sets = setsFromIntervals(givenIntervals: sortedIntervals)
    var mergedIntervals = [(Int,Int)]()
    var i = 1
    
    // MARK: Control Flow Statements
    
    while i < sets.count {
        let previousSet = sets[i - 1]
        let currentSet = sets[i]
        let currentPreviousIntersection = currentSet.intersection(previousSet)
        if currentPreviousIntersection.isEmpty {
            // The two sets are disjoint - IE the two segments are disjoint
            mergedIntervals.append(sortedIntervals[i - 1])
            mergedIntervals.append(sortedIntervals[i])
        } else {
            // The two sets have some common values - there are TWO CASES:
            // 1. current set is a pure subset of previous set
            // 2/ current set starts inside previous set values and extends further
            if currentSet.isStrictSubset(of: previousSet) {
                // 1. - want to just return previous set to the merged intervals
                mergedIntervals.append(sortedIntervals[i - 1])
            } else {
                // 2.
               let previousStart = sortedIntervals[i - 1].0
               let currentEnd = sortedIntervals[i].1
               mergedIntervals.append((previousStart,currentEnd))
               // want previous set to be the merged one
            }
        }
        i += 1
    }
    
    return mergedIntervals
}
mergeOverlapping(intervals: [(1, 3), (5, 8), (4, 10), (20, 25)])
