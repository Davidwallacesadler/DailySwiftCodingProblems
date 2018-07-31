import UIKit

//Start with the following code:

class Person {
    let firstName: String
    let lastName: String
    let age: Int
    
    //initialize the class (this the same as "creating an initial instance of the person class) - so whatever is passed in later will 
    
    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
}

let james = Person(firstName: "James", lastName: "Tomsik", age: 26)
let andrea = Person(firstName: "Andrea", lastName: "Mower", age: 24)
let carol = Person(firstName: "Rebecca", lastName: "Mordo", age: 30)

// Work Starts Here: ******************************************************************************

//1. Start by creating a collection (an array) of the james, andrea, and carol, person instances. This collection holds the club members:

var clubMembers: [Person] = [james, andrea, carol]

///2. Initialize two more Person objects. Add one of them to the club array, but do not add the other.

let david = Person(firstName: "David", lastName: "Sadler", age: 25)
let kayla = Person(firstName: "Kayla", lastName: "Sudweeks", age: 25)

clubMembers.append(david)

//3. Now, create a function called areYouAMemberOfTheClub that takes a Person object as a parameter and returns a Bool indicating whether or not the person passed in is a member of the club. It should return true for the person that you added to the array of club members and false for the other person.

//Approach: We need to extend the Person class to conform to the Equitable protocol(used to verify TYPE equality I.E == and !=). We can use this protocol to verify who is in the clubMembers array using the .contains method. Here to conform to the protocol (must return a Bool value), we create an extension and use the static func to get a Bool return value. The most important part is that we can get things to be comparable - basically we want to set up a lhs and rhs of an equation to check equality.

extension Person: Equatable {
    static func == (lhs: Person, rhs: Person) -> Bool {
        return
            lhs.firstName == rhs.firstName &&
                lhs.lastName == rhs.lastName &&
                lhs.age == rhs.age
    }
}

//Now that we have properly conformed to the Equitable protocol we can create a function to check club membership status:

func areYouAMemberOfTheClub(PersonObject: Person) -> Bool {
    return clubMembers.contains(PersonObject)
}

//Function test values:

areYouAMemberOfTheClub(PersonObject: kayla)
areYouAMemberOfTheClub(PersonObject: james)
areYouAMemberOfTheClub(PersonObject: david)
