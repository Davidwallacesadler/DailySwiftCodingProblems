import UIKit
/*
 An XOR linked list is a more memory efficient doubly linked list:
 Instead of each node holding next and prev fields, it holds a field named both, which is an XOR of the next node and the previous node. -- this will make it so we have basically a regular linked list in terms of each node only containing next - if has only previous its a tail, if has only next its a head, if has head and tail
 Goal:
 Implement an XOR linked list; it has an add(element) which adds the element to the end, and a get(index) which returns the node at index.
*/

//First lets try to implement this for just a regular doubly linked list:
//Create the list and have append and get methods.

//This creates node objects - the elements of the list:
class Node<T> {
    
    //Each node has data property, a next property that references the next node in the list, and a previous property that references the previous node in the list:
    var data: T
    var next: Node<T>?
    weak var previous: Node<T>? //weak to break ownership cycle (RESEARCH)
    
    //Initializer for all non-opitional stored properties of the Node:
    init(data: T) {
        self.data = data
    }
}

//This creates Linked List objects (need to keep track of where this begins and ends):
 class LinkedList<T> {
    
    //Every list has a head and a tail node (data may be nil)
    var head: Node<T>?
    var tail: Node<T>?
    
     var isEmpty: Bool {
        return head == nil
    }
    
    //First element in the list is the head.
     var first: Node<T>? {
        return head
    }
    
    //Last element in the list is the tail.
    var last: Node<T>? {
        return tail
    }
    
    func append(value: T) {
        
        //Create a new node object with the desired data:
        let newNode = Node(data: value)
        
        //Check the List: 1. case where there is a tail node (tailNode != nil) on the list, 2. case where there is no tail node on the list (IE no head), 3. Default case: just set the tail to the new item.
        // 1.
        if let tailNode = tail {
            
            //New node now has previous reference: tailNode
            newNode.previous = tailNode
            //Tail node now has next reference: newNode
            tailNode.next = newNode
        } else {
            //2.
            
            head = newNode
        }
        //3.
        tail = newNode
    }
    
    func nodeAt(index: Int) -> Node<T>? {
        
        // create a check so that we will never have a negative index value:
        if index >= 0 {
            // create a computed property and assign it to the head node:
            var node = head
            // create a computed property and assign it to the index Integer:
            var i = index
            
            // loop through the nodes counting back from the index value to the head node (i = 0):
            while node != nil {
                if i == 0 {
                    return node
                }
                i -= 1
                node = node!.next
            }
        }
        return nil
    }
}

extension LinkedList: CustomStringConvertible {
    
    //Must implement a computed property : descrition of type String
    var description: String {
        //initialize the text string with a bracket to symbolize the beginning of the list:
        var text = "["
        
        //node stored property that is equal to the head node:
        var node = head
        
        //while the head is not nil append the nil data to the text String
        while node != nil {
            
            text += "\(node!.data)"
            
            //move from the head node to the next node in the list (increment in the list by the next reference)
            node = node!.next
            
            //check if the next node is nil, and if not append a comma to the text String to prepare for the next data value:
            if node != nil {
                text += ", "
            }
        }
         return text + "]"
    }
}




let apexGuns = LinkedList<String>()
apexGuns.append(value: "Wingman")
apexGuns.append(value: "R-301")
apexGuns.append(value: "R-45")
apexGuns.append(value: "Triple Take")
apexGuns.append(value: "Anus-Melter-5000")
apexGuns.append(value: "Devotion")
apexGuns.append(value: "Peacekeeper")
apexGuns.append(value: "Spitfire")
apexGuns.nodeAt(index: 4)

//Linked list conform to CustomStringConvertable protocol
print(apexGuns)
