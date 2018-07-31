import UIKit

class Person {
    let name:String
    var favoriteColor:String?
    var favoriteMovie:String?
    init(name:String, favoriteColor:String?, favoriteMovie:String?) {
        self.name = name
        self.favoriteColor = favoriteColor
        self.favoriteMovie = favoriteMovie
    }
    
}

var David = Person(name: "David Sadler", favoriteColor: "Blue", favoriteMovie: "The Holy Mountain")

print("Meet \(David.name), they love the color \(String(describing: David.favoriteColor)) and their favorite movie is \(String(describing: David.favoriteMovie))")

