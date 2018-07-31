//
//  Person.swift
//  ClubMembers
//
//  Created by David Sadler on 6/3/18.
//  Copyright © 2018 David Sadler. All rights reserved.
//

import Foundation

class Person {
    let firstName: String
    let lastName: String
    let age: Int
  
    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
}
extension Person: Equatable {
    static func == (lhs: Person, rhs: Person) -> Bool {
        return
            lhs.firstName == rhs.firstName &&
                lhs.lastName == rhs.lastName &&
                lhs.age == rhs.age
    }
}
//let james = Person(firstName: "James", lastName: "Tomsik", age: 26)
//let andrea = Person(firstName: "Andrea", lastName: "Mower", age: 24)
//let carol = Person(firstName: "Rebecca", lastName: "Mordo", age: 30)
//let david = Person(firstName: "David", lastName: "Sadler", age: 25)
//let kayla = Person(firstName: "Kayla", lastName: "Sudweeks", age: 25)
//
