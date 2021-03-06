<p align="center">
  <img width="300" height="300" src="https://raw.githubusercontent.com/Davidwallacesadler/DailySwiftCodingProblems/master/coding.png">
</p>

# Daily Coding Prompts

## 2019

### October

#### 10/5:
Let X be a set of n intervals on the real line. We say that a set of points P "stabs" X if every interval in X contains at least one point in P. Compute the smallest set of points that stabs X. For example, given the intervals [(1, 4), (4, 5), (7, 9), (9, 12)], you should return [4, 9].

#### 10/4:
Write a program that checks whether an integer is a palindrome. For example, 121 is a palindrome, as well as 888. 678 is not a palindrome. Do not convert the integer into a string.

#### 10/3:
Given an integer n, return the length of the longest consecutive run of 1s in its binary representation. For example, given 156, you should return 3.

#### 10/4:
Given a string and a pattern, find the starting indices of all occurrences of the pattern in the string. For example, given the string "abracadabra" and the pattern "abr", you should return [0, 7].

#### 10/1:
Write a method that finds the mode of a list of integers. IE if the list of integers is [1,2,3,1] the mode should be 1.

### September

#### 9/23:
Create a simulation of the heat transfer of a solar panel to a storage tank (Thermodynamic Solar Panel).

### August

#### 8/22:
Given an array of positive integers, divide the array into two subsets such that the difference between the sum of the subsets is as small as possible. For example, given [5, 10, 15, 20, 25], return the sets {10, 25} and {5, 15, 20}, which has a difference of 5, which is the smallest possible difference.

### July

#### 7/13:
Given an array of numbers and an index i, return the index of the nearest larger number of the number at index i, where distance is measured in array indices. For example, given [4, 1, 3, 5, 6] and index 0, you should return 3. If two distances to larger numbers are the equal, then return any one of them. If the array at i doesn't have a nearest larger integer, then return null. Follow-up: If you can preprocess the array, can you do this in constant time?

#### 7/9:
Given an array of integers in which two elements appear exactly once and all other elements appear exactly twice, find the two elements that appear only once. For example, given the array [2, 4, 6, 8, 10, 2, 6, 10], return 4 and 8. The order does not matter. Follow-up: Can you do this in linear time and constant space?

### June

#### 6/12:
Given a string and a set of delimiters, reverse the words in the string while maintaining the relative order of the delimiters. For example, given "hello/world:here", return "here/world:hello". Follow-up: Does your solution work for the following cases: "hello/world:here/", "hello//world:here".

#### 6/5:
Given a 2D matrix of characters and a target word, write a function that returns whether the word can be found in the matrix by going left-to-right, or up-to-down.

#### 6/4:
Given an integer list where each number represents the number of hops you can make, determine whether you can reach to the last index starting at index 0.

### May

#### 5/31:
Given a string and a set of characters, return the shortest substring containing all the characters in the set. For example, given the string "figehaeci" and the set of characters {a, e, i}, you should return "aeci".

#### 5/30:
Given a list of integers and a number K, return which contiguous elements of the list sum to K. For example, if the list is [1, 2, 3, 4, 5] and K is 9, then it should return [2, 3, 4], since 2 + 3 + 4 = 9.

#### 5/28:
Given an unsorted array of integers find the length of the longset consecutive elements sequence. PART 2: Write a method that returns todays date at the desired hour and minute.

#### 5/22:
You are given an N by M 2D matrix of lowercase letters. Determine the minimum number of columns that can be removed to ensure that each row is ordered from top to bottom lexicographically. That is, the letter at each column is lexicographically later as you go down each row. It does not matter whether each row itself is ordered lexicographically.

#### 5/21:
Write a method that takes in a Integer amount of days and returns the date in the future corrosponding to the current date plus the amount of days. Do this without using a TimeInterval.

#### 5/18:
Given an integer n and a list of integers l, write a function that randomly generates a number from 0 to n-1 that isn't in l (uniform).

#### 5/17:
Given a list of possibly overlapping intervals, return a new list of intervals where all overlapping intervals have been merged. The input list is not necessarily ordered in any way. For example, given [(1, 3), (5, 8), (4, 10), (20, 25)], you should return [(1, 3), (4, 10), (20, 25)].

#### 5/16:
Implement division of two positive integers without using the division, multiplication, or modulus operators. Return the quotient as an integer, ignoring the remainder.

#### 5/15:
Given a string of parentheses, write a function to compute the minimum number of parentheses to be removed to make the string valid (i.e. each open parenthesis is eventually closed). For example, given the string "()())()", you should return 1. Given the string ")(", you should return 2, since we must remove all of them.

#### 5/14:
Given an array of integers, write a function to determine whether the array could become non-decreasing by modifying at most 1 element. For example, given the array [10, 5, 7], you should return true, since we can modify the 10 into a 1 to make the array non-decreasing. Given the array [10, 5, 1], you should return false, since we can't modify any one element to get a non-decreasing array.

#### 5/12:
Given a matrix of 1s and 0s, return the number of "islands" in the matrix. A 1 represents land and 0 represents water, so an island is a group of 1s that are neighboring whose perimeter is surrounded by water.

#### 5/11:
Suppose you have a multiplication table that is N by N. That is, a 2D array where the value at the i-th row and j-th column is (i + 1) * (j + 1) (if 0-indexed) or i * j (if 1-indexed). Given integers N and X, write a function that returns the number of times X appears as a value in an N by N multiplication table. For example, given N = 6 and X = 12, you should return 4.

#### 5/9:
Given a mapping of digits to letters (as in a phone number), and a digit string, return all possible letters the number could represent. You can assume each valid number in the mapping is a single digit. For example if {“2”: [“a”, “b”, “c”], 3: [“d”, “e”, “f”], …} then “23” should return [“ad”, “ae”, “af”, “bd”, “be”, “bf”, “cd”, “ce”, “cf"].

#### 5/1:
In a directed graph, each node is assigned an uppercase letter. We define a path's value as the number of most frequently-occurring letter along that path. For example, if a path in the graph goes through "ABACA", the value of the path is 3, since there are 3 occurrences of 'A' on the path. Given a graph with n nodes and m directed edges, return the largest value path of the graph. If the largest value is infinite, then return null. The graph is represented with a string and an edge list. The i-th character represents the uppercase letter of the i-th node. Each tuple in the edge list (i, j) means there is a directed edge from the i-th node to the j-th node. Self-edges are possible, as well as multi-edges.

### April

#### 4/7:
Given an array of numbers, find the maximum sum of any contiguous subarray of the array. For example, given the array [34, -50, 42, 14, -5, 86], the maximum sum would be 137, since we would take elements 42, 14, -5, and 86. Given the array [-5, -1, -8, -9], the maximum sum would be 0, since we would not take any elements. Do this in O(N) time.

#### 4/2:
We can determine how "out of order" an array A is by counting the number of inversions it has. Two elements A[i] and A[j] form an inversion if A[i] > A[j] but i < j. That is, a smaller element appears after a larger element. Given an array, count the number of inversions it has. Do this faster than O(N^2) time.

### March

#### 3/31:
Given a list of integers S and a target number k, write a function that returns a subset of S that adds up to k. If such a subset cannot be made, then return null. Integers can appear more than once in the list. You may assume all numbers in the list are positive.

#### 3/30:
Given an unordered list of flights taken by someone, each represented as (origin, destination) pairs, and a starting airport, compute the person's itinerary. If no such itinerary exists, return null. If there are multiple possible itineraries, return the lexicographically smallest one. All flights must be used in the itinerary. 
For example, given the list of flights [('SFO', 'HKO'), ('YYZ', 'SFO'), ('YUL', 'YYZ'), ('HKO', 'ORD')] and starting airport 'YUL', you should return the list ['YUL', 'YYZ', 'SFO', 'HKO', 'ORD']. Given the list of flights [('SFO', 'COM'), ('COM', 'YYZ')] and starting airport 'COM', you should return null. Given the list of flights [('A', 'B'), ('A', 'C'), ('B', 'C'), ('C', 'A')] and starting airport 'A', you should return the list ['A', 'B', 'C', 'A', 'C'] even though ['A', 'C', 'A', 'B', 'C'] is also a valid itinerary. However, the first one is lexicographically smaller.

#### 3/22:
Compute the running median of a sequence of numbers. That is, given a stream of numbers, print out the median of the list so far on each new element. Recall that the median of an even-numbered list is the average of the two middle numbers.

#### 3/20:
Given two strings find the edit distance between them. In other words, find the number of substitutions, additions, or deletions one would have to make in order to turn either of the Strings into each other.

#### 3/19:
Run-length encoding is a fast and simple method of encoding strings. The basic idea is to represent repeated successive characters as a single count and character. For example, the string "AAAABBBCCDAA" would be encoded as "4A3B2C1D2A". Implement run-length encoding and decoding. You can assume the string to be encoded have no digits and consists solely of alphabetic characters. You can assume the string to be decoded is valid.

#### 3/17:
Write an algorithm to justify text. Given a sequence of words and an integer line length k, return a list of strings which represents each line, fully justified.

#### 3/16:
Given an array of time intervals (start, end) for classroom lectures (possibly overlapping), find the minimum number of rooms required. For example, given [(30, 75), (0, 50), (60, 150)], you should return 2. 

#### 3/12:
Write a function that converts integer numbers to roman numerals ( integer is from 1 -255)

#### 3/11:
Write a function takes in a 'dictionary' of words and a string made up of those words (no spaces), and returns the original phrase as an array (reconstructing the giving phrase).

#### 3/9:
Write a function to help a friend wallpaper a room given the room has no windows ( l X w X h is given), the wall paper rolls are .52 m X 10 m, and he wants 15% extra length than he needs to cover the walls. Return a simple String number representing the number of rolls he needs.

#### 3/8(B):
Write a function that takes in an array of integers and returns the largest sum of any non adjacent elements.

#### 3/8:
Write a function that takes in an array and an integer k that prints out the maximum value of all subArrays of length k.

#### 3/7:
Given an integer k and a string s, find the length of the longest substring that contains at most k distinct characters. For example, given s = "abcba" and k = 2, the longest substring with k distinct characters is "bcb" and has length 3.

#### 3/6:
Given a string, s, write a function that returns all possible subStrings of s.

### February

#### 2/27:
Write a function that calls another function after 3 seconds have passed.

#### 2/26:
You have a positive number n consisting of digits. You can do at most one operation: Choosing the index of a digit in the number, remove this digit at that index and insert it back to another place in the number.
 Doing so, find the smallest number you can get.
 1) the smallest number you got
 2) the index i of the digit d you took, i as small as possible
 3) the index j (as small as possible) where you insert this digit d to have the smallest number.

#### 2/25:
Given the mapping a = 1, b = 2, ... z = 26, and an encoded message, count the number of ways it can be decoded. For example, the message '111' would give 3, since it could be decoded as 'aaa', 'ka', and 'ak'. You can assume that the messages are decodable. For example, '001' is not allowed.

#### 2/23:
An XOR linked list is a more memory efficient doubly linked list: Instead of each node holding next and prev fields, it holds a field named both, which is an XOR of the next node and the previous node. -- this will make it so we have basically a regular linked list in terms of each node only containing next - if has only previous its a tail, if has only next its a head, if has head and tail

#### 2/22(B):
Given the root to a binary tree, implement serialize(root), which serializes the tree into a string, and deserialize(s), which deserializes the string back into the tree.

#### 2/22:
cons(a, b) constructs a pair, and car(pair) and cdr(pair) returns the first and last element of that pair. For example, car(cons(3, 4)) returns 3, and cdr(cons(3, 4)) returns 4. Given this implementation of cons:  def cons(a, b):  def pair(f): return f(a, b) return pair  Implement car and cdr.

#### 2/21:
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

#### 2/20:
Its the year 2097 and the world uses a single currency called Credits. Credits have no denominations IE no fractional component. Imagine your friend inherits a fortune of Credits and he's making you guess how much he has, because he's mean and doesn't want to tell you outright. He tells you that he has between m and n Credits and:
    1. If he was to buy 9 cars costing c each, he'd only have 1 Credit left.
    2. And if he was to buy 7 boats at b each, I'd only have 2 Credits left.
 Can you generate a list of possible fortune amounts that he might have for different values of c and b?
 IE can you take in m, and n start values and return an array of [("M: possibleCreditsYourFriendFound", "B: boatValue", "C: carValue")

#### 2/19:
Given an array of integers, return a new array such that each element at index i of the new array is the product of all the numbers in the original array except the one at i. For example, if our input was [1, 2, 3, 4, 5], the expected output would be [120, 60, 40, 30, 24]. If our input was [3, 2, 1], the expected output would be [2, 3, 6]. Follow-up: what if you can't use division?

#### 2/18:
Given a list of numbers and a number k, return whether any two numbers from the list add up to k.  For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17. Bonus: Can you do this in one pass?

#### 2/15:
Coding decimal numbers with factorials is a way of writing out numbers in a base system that depends on factorials, rather than powers of numbers.  In this system, the last digit is always 0 and is in base 0!. The digit before that is either 0 or 1 and is in base 1!. The digit before that is either 0, 1, or 2 and is in base 2!. More generally, the nth-to-last digit in always 0, 1, 2, ..., or n and is in base n!. Given numbers will be positive. Example : decimal number 463 is coded as "341010" because 463 (base 10) = 3×5! + 4×4! + 1×3! + 0×2! + 1×1! + 0×0!. 

#### 2/14:
Given a positive integer n written as abcd... (a, b, c, d... being digits) and a positive integer p we want to find a positive integer k, if it exists, such that the sum of the digits of n taken to the successive powers of p is equal to k * n.  In other words:  Is there an integer k such as : (a ^ p + b ^ (p+1) + c ^(p+2) + d ^ (p+3) + ...) = n * k. If it is the case we will return k, if not return -1. Note: n and p will always be given as strictly positive integers.

#### 2/13:
You throw a ball vertically upwards with an initial speed v (in km per hour). The height h of the ball at each time t is given by h = vt - 0.5gtt where g is Earth's gravity (g ~ 9.81 m/s2). A device is recording at every tenth of second the height of the ball. For example with v = 15 km/h the device gets something of the following form: (0, 0.0), (1, 0.367...), (2, 0.637...), (3, 0.808...), (4, 0.881..) ... where the first number is the time in tenth of second and the second number the height in meter.

#### 2/12:
You’re a hospital that logs patients, every time a patient comes in you log a timestamp. The timestamp is a number representing the number of seconds that have passed since 1900, you have to figure out a way to determine based on the timestamp if the patient was admitted before 6:00 PM or after 6:00 PM on the day they were admitted.

#### 2/7:
Write a function that, given an array A of N integers, returns the smallest positive integer (greater than 0) that does not occur in A. For example, given A = [1, 3, 6, 4, 1, 2], the function should return 5.  Given A = [1, 2, 3], the function should return 4. Given A = [−1, −3], the function should return 1. Write an efficient algorithm for the following assumptions:N is an integer within the range [1..100,000]; each element of array A is an integer within the range [−1,000,000..1,000,000].

## 2018

### September

#### 9/27: 
Make a person class with name, age, and favoriteMovie properties
init the class with a dictionary of type string:anyobject. Test this to make sure that it works. Read about Failable Initializers. Use a guard statement to handle missing dictionary values If a value is missing, don’t init the person and instead return nil.

### June

#### 7/11: 
Make a constant called currentYear that is an integer equal to the current year (e.g. 2016). Create a Person struct with properties for first name as a String, last name as a String, and year of birth as an Int. Create an instance of the Person struct. Print out the instance’s birth year. Print out its first and last name. Add a computed property for age to the Person struct. Implement a getter for age. The getter should calculate and return the person’s age based on the current year and the person’s year of birth. (Hint: Look up getters in the Swift programming guide or in documentation). Implement a setter for age. The setter should update the year of birth based on the age and current year. (Hint: look up setters). Print out the person’s age. Update their age and then print their new year of birth.

### July

#### 6/3:
Create a new X-Code Project called ClubMembers. Copy over your Person class, clubMembers array, and make a new array that contains all of your Person objects, whether club members or not. Make sure to copy over your Equatable function as well (all of these should be put into the proper files, which you’ll need to make). Then create a tableView that displays all people with a subtitle that says club member or not a club member. Add a button that will reload your tableView and only show club members.

### May

#### 5/25:
Initialize Person objects with non optional properties age, first name, last name. Add one of them to the club array, but do not add the other. Now, create a function called areYouAMemberOfTheClub that takes a Person object as a parameter and returns a Bool indicating whether or not the person passed in is a member of the club. It should return true for the person that you added to the array of club members and false for the other person. note: there are a couple of ways to do this, but in all ways you will be using the clubMembers array as a reference. Perhaps you thought the best way to accomplish the above task was to loop through the clubMembers array in your function and see if the person passed in is equal to any of them using person == clubMembers[i], or something along those lines. Notice that you cannot use the == operator. This is because you must conform to the Equatable protocol. Go look it up in documentation.Make the Person object conform to the Equatable protocol and outside of the Person class create the necessary Equatable function. You should now be able to use the == operator between two Person objects, making it easier to make your areYouAMemberOfTheClub function. By conforming to the Equatable protocol, you are also given some array methods that help solve this problem (you don’t have to use them, but they make your life easier).

#### 5/21:
Create a method that takes in an integer X and prints out every integer from 0 to X (or from X to 0 if X < 0).

#### 5/17:
Create a Person class with stored properties: age, first name, last name. The class should have an initializer so objects of the Person class can be created.

Sources:
1. DevMountain exercizes
2. CodeWars.com
3. DailyCodingProblem.com
