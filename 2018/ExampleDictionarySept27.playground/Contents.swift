import UIKit

//let workingDictionary = ["nameKey" : "Derek", "ageKey": 28, "favMovieKey" : "Zoolander"]
//let brokenDictionary = ["nameKey" : "Steve", "ageKey": 2]

class person {
    var name: String
    var age: Int
    var favoriteMovie: String
    
    init(name: String, age: Int, favoriteMovie: String) {
        self.name = name
        self.age = age
        self.favoriteMovie = favoriteMovie
    }
}
let john = person(name: "John", age: 20, favoriteMovie: "Indiana Jones")

