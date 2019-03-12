//
//  ViewController.swift
//  ClubMembers
//
//  Created by David Sadler on 6/3/18.
//  Copyright © 2018 David Sadler. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    //MARK: - Internal Properties
    var mockData: [Person]?
    
    //MARK: - Outlets and Actions
    @IBOutlet var tableView: UITableView!
    
    //MARK: -Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        createMockData()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mockData?.count ?? 0

    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TextCell", for: indexPath)
        guard let people = mockData else {return cell}
        let person = people[indexPath.row]
        cell.textLabel?.text = "\(person.firstName) \(person.lastName) age: \(person.age)"
        
        
        return cell
    }
    
    func createMockData() {
        _ = Person(firstName: "James", lastName: "Tomsik", age: 26)
        let andrea = Person(firstName: "Andrea", lastName: "Mower", age: 24)
        let carol = Person(firstName: "Rebecca", lastName: "Mordo", age: 30)
        let david = Person(firstName: "David", lastName: "Sadler", age: 25)
        let kayla = Person(firstName: "Kayla", lastName: "Sudweeks", age: 25)
        
        mockData = [andrea, carol, david, kayla]
    }


    
    
    


//
//    let cellReuseIdentifier = "TextCell"
//
//   let clubMembers: [Person] = [james, andrea, carol, david]
//   let clubMembersNames: [String] = ["james", "andrea", "carol", "david"]


//
//    // number of rows in table view
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return self.clubMembers.count
//    }
//
//    // create a cell for each table view row
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        // create a new cell if needed or reuse an old one
//        let cell:UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell!
//
//        // set the text from the data model
//        cell.textLabel?.text = self.clubMembersNames[indexPath.row]
//
//        return cell
//    }
//
//    // method to run when table view cell is tapped
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print("You tapped cell number \(indexPath.row).")
//}
//}
//
//

/*
let clubMembers: [Person] = [james, andrea, carol, david]
 
func areYouAMemberOfTheClub(PersonObject: Person) -> Bool {
     return clubMembers.contains(PersonObject)
 }
    
    //Now, to conform to UITableViewDataSource, you must implement 3 methods:
    
    //1. numberOfSectionsInTableView:
    //2. tableView:numberOfRowsInSection:
    //3. tableView:cellForRowAtIndexPath:
    
// MARK:  UITextFieldDelegate Methods
 
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return clubMembers1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Note:  Be sure to replace the argument to dequeueReusableCellWithIdentifier with the actual identifier string!
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReplaceWithCellIdentifier") as! UITableViewCell
        // set cell's textLabel.text property
        let row = indexPath.row
        cell.textLabel?.text = clubMembers[row]
        // set cell's detailTextLabel.text property
        return cell
    }

// MARK:  UITableViewDelegate Methods
 
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
        
        let row = indexPath.row
        print(clubMembers[row])
    }


}
*/
}
