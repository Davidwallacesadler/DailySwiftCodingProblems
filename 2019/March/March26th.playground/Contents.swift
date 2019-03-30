import UIKit
// TODO: -
// TEST FOR MEMBERSHIP DONT USE ARRAY GROUPINGS---

func powersetOf(_ argSet: Set<Int>) -> Set<Set<Int>> {
    var powerSet = Set<Set<Int>>()
    powerSet.insert(Set<Int>())
    var beginningOfGrouping = 0
    var endOfGrouping = argSet.count - 1
    let arraySet = Array(argSet)
    while endOfGrouping >= 0 {
        while endOfGrouping + beginningOfGrouping <= argSet.count - 1 {
            if beginningOfGrouping >= endOfGrouping {
                let subset = Set(arraySet[beginningOfGrouping...beginningOfGrouping])
                powerSet.insert(subset)
                beginningOfGrouping += 1
            } else {
                let subset = Set(arraySet[beginningOfGrouping...endOfGrouping])
                powerSet.insert(subset)
                beginningOfGrouping += 1
            }
        }
        endOfGrouping -= 1
        beginningOfGrouping = 0
    }
    return powerSet
}
let set: Set = [1,2,3]
powersetOf(set)

