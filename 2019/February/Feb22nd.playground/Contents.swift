import UIKit
/*
 cons(a, b) constructs a pair, and car(pair) and cdr(pair) returns the first and last element of that pair. For example, car(cons(3, 4)) returns 3, and cdr(cons(3, 4)) returns 4.
 
 Given this implementation of cons:
 
 def cons(a, b):
 def pair(f):
 return f(a, b)
 return pair
 Implement car and cdr.
 
 */

//Create the cons function as close to the example implementation: This function creates a 2nd order tuple (pair) from two integers a and b:
func cons(_ a: Int,_ b: Int) -> (Int, Int) {
    return (a , b)
}

//This function takes in a pair, and returns the element at index 0 in the tuple (the first element in the pair):
func car(_ pair: (Int, Int)) -> Int {
    return pair.0
}

//This function takes in a pair, and returns the element at index 1 in the tuple (the second element in the pair):
func cdr(_ pair: (Int, Int)) -> Int {
    return pair.1
}

car(cons(3, 4))
cdr(cons(3, 4))

