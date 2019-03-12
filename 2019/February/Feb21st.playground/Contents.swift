import Foundation
/*
 
Linked Lists - Push & BuildOneTwoThree

Write push() and buildOneTwoThree() functions to easily update and initialize linked lists. Try to use the push() function within your buildOneTwoThree() function.

Here's an example of push() usage:

var chained = null
chained = push(chained, 3)
chained = push(chained, 2)
chained = push(chained, 1)
push(chained, 8) === 8 -> 1 -> 2 -> 3 -> null
The push function accepts head and data parameters, where head is either a node object or null/None/nil. Your push implementation should be able to create a new linked list/node when head is null/None/nil.

The buildOneTwoThree function should create and return a linked list with three nodes: 1 -> 2 -> 3 -> null

 */

class Node {
    var data: Int?
    var next: Node?
    
    init(_ data: Int?) {
        self.data = data
    }
}

///This function pushes a new node onto a linked list.
func push(_ head:Node?, _ data:Int) -> Node {
    //This creates a new instance of a Node by passing in the data we want to push onto the linked list:
    let newNode = Node(data)
    
    //This sets the next reference of the new node:
    newNode.next = head
    return newNode
}

///This function builds the follwing linked list: (-> := "has next reference of...") 1 -> 2 -> 3 -> nil
func buildOneTwoThree() -> Node {
    var chained = push(nil, 3)
    chained = push(chained, 2)
    chained = push(chained, 1)
    return chained
}
buildOneTwoThree()
