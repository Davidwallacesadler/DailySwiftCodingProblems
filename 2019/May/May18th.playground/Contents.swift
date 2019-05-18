import Foundation

/// This function will generate a random number from 0 to n that is not contained in the array of arguemnt integers:
func randomNumberInComplement(ofList integers: [Int], randomNumberBound n: Int) -> Int {
    
    // Initialize a set of integers to exclude from the randomNumberList:
    let exclusionSet = Set(integers)
    // Initialize the range of random integers:
    var randomNumberSet = Set(0..<n)
    // Find the intersection of the two sets
    let commonValues = randomNumberSet.intersection(exclusionSet)
    // Loop through the common values and remove them from our randomNumber set:
    for value in commonValues {
       randomNumberSet.remove(value)
    }
    // Generate a random number from the set
    guard let random = randomNumberSet.randomElement() else {
        print("error getting the random integer form the random number integers")
        return n - 1
    }
    return random
}
randomNumberInComplement(ofList: [1,2,3,4,5], randomNumberBound: 10)
