import UIKit

// Part I - Create Person Struct and create an instance of a Person.

// let currentYear = 2018

let date = NSDate()
let calendar = NSCalendar.current
let year = calendar.component(.year,from: date as Date)

let currentYear = year


struct Person {
    var firstName: String
    var lastName: String
    var birthYear: Int
    
    //MARK: Computed Property
    
    var age: Int {
        get {
            return currentYear - birthYear
        }
        set {
            age = newValue
        }
    }
    
    init(firstName: String, lastName: String, birthYear: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.birthYear = birthYear
    }
}

let David = Person(firstName: "David", lastName: "Sadler", birthYear: 1994)

//Part II -

//Add a computed property for age to the Person struct
//Implement a getter for age. The getter should calculate and return the person’s age based on the current year and the person’s year of birth. (Hint: Look up getters in the Swift programming guide or in documentation).
//Implement a setter for age. The setter should update the year of birth based on the age and current year. (Hint: look up setters).
//Print out the person’s age
//Update their age and then print their new year of birth.

print("\(David.firstName) \(David.lastName)")
print("Born in \(David.birthYear)")
print("He is \(David.age) years old")

//BLACK DIAMOND --
//Change your currentYear constant so that instead of being a hard-coded, static year, it uses NSDateComponents to get the actual current year anytime it runs. Documentation should help you out.
//MY ADDED CHALLENGE - print out EXACTLY how old I am (down to the seconds) by providing that I was born 2/16/1994 at 4:15 AM and comparing to the computer clock.

//NSDate Research Notes:

//1. An NSDateComponents object is meaningless in itself; you need to know what calendar it is interpreted against, and you need to know whether the values are absolute values of the units, or quantities of the units

