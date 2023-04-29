import UIKit

var greeting = "Hello, playground"


2 + 2
3 + 11
100 * 10
199 / 2
28 % 10

// Math functions => no need to import any library like kotlin
sin(45 * Double.pi / 180)
cos(135 * Double.pi / 180)
max(5, 10)
max((2.0).squareRoot(), Double.pi / 2)

// NAMING DATA
// this is a constant
let firstName: String = "Jesse Mensah"
var age: Int = 30

// Chapter 2
// Types and Operations
var integer: Int = 100
var decimal: Double = 12.5
integer = Int(decimal)

let wantADouble = 3
let actuallyDouble = Double(3)
let actuallyDoubleOne = 3 as Double


// STRINGS AND CHARACTERS
let characterA: Character = "a"
let stringDog: String = "Dog"

// CONCATENATION
var message = "Hello" + " my name is "
let name = "Jesse"
message += name

// INTERPOLATION
message = "Hello my name is \(name)!"


// TUPES => CALLED PAIRS OR TRIPLES IN KOTLIN
let coordinates: (Int, Int) = (2, 3)
let coordinatesOne = (2.1, 3.5)
let x1 = coordinatesOne.0
// named coordinates
let coordinatesName = (x: 2, y: 3)
let x2 = coordinatesName.x
let y2 = coordinatesName.y

// BASIC CONTROL FLOW
// COMPARISON OPERATION
// the answer is either true or false, swift has a data type for this which is called Bool
let yes: Bool = true
let no: Bool = false

// Boolean operations
let doesOneEqualTwo = (1 == 2)
let doesOneNotEqualTwo = (1 != 2)
let anotherWay = !(1 == 2)

// Boolean logic
// using AND
let and = true && true
let or = true || false
let andTrue = 1 < 2 && 4 > 3
let orTrue = 1 < 2 || 3 > 4

// Bool can be turned off or on
var switchState = true
switchState.toggle()
switchState.toggle()


// if statements
if 2 > 1 {
    print("Yes, 2 is greater than 1")
}

let animal = "Fox"
if animal == "Cat" || animal == "Dog" {
    print("The animal is the house pet")
} else {
    print("Animal is not a house pet")
}


// The ternary conditional operator
let a = 5
let b = 10

let min: Int
if a < b {
    min = a
} else {
    min = b
}

let max: Int
if a > b {
    max = a
} else {
    max = b
}

// same as the equivalent
let minAlt = a < b ? a : b
let maxAlt = a > b ? a : b

// Loops => way of executing code multiple times
var sum = 1
while sum < 1000 {
    sum = sum + (sum + 1)
}


// repeat while loops
// what is repeat while loops
sum = 1
repeat {
    sum = sum + (sum + 1)
} while sum < 1000


// breaking out of a loop
sum = 1
while true {
    sum = sum + (sum + 1)
    if sum >= 1000 {
        break
    }
}

// MAIN EXAMPLE
var number = 1 // define a variable number and set it to 1

repeat {
    print(number)
    number += 1
// checks the condition at the end of each iteration
} while number <= 10

// normal while loop
number = 1
while number <= 10 {
    print(number)
    number += 1
}


// EXERCISES
// SNAKES AND LADDERS
let currentPosition = 4
let diceRoll = 5

var nextPosition = currentPosition + diceRoll
// check for the ladders
switch nextPosition {
case 3:
    nextPosition = 15
case 7:
    nextPosition = 12
default:
    break
}

// check for the snakes
switch nextPosition {
case 11:
    nextPosition = 2
case 17:
    nextPosition = 9
default:
    break
}

print("You rolled a \(diceRoll) and moved from position \(currentPosition) to position \(nextPosition)")


// Number of days in a month => number of days in a month
// change this program to a command line
let month = "febuary"
let year = 2024

var numberOfDays: Int

switch month {
case "january", "march", "july", "august", "october", "december":
    numberOfDays = 31
case "april", "june", "september", "november":
    numberOfDays = 30
case "febuary":
    if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0) {
        numberOfDays = 29
    } else {
        numberOfDays = 28
    }
default:
    numberOfDays = -1 // invalid month name
        
}

if numberOfDays != -1 {
    print("\(month.capitalized) has \(numberOfDays) days in \(year)")
} else {
    print("Invalid month name")
}


// PRINT THE TRIANGULAR DEPTH OF THAT NUMBER
let depth = 10

var triangularNumber = 0
for _ in 1...depth {
    triangularNumber += 1
}

print("Triangular number of \(depth) is \(triangularNumber)")

// FIBONACCI
let n = 7

var a1 = 1
var b1 = 1
var fib = 1

if n <= 2 {
    fib = 1
} else {
    for _ in 3...n {
        fib = a1 + b1
        a1 = b
        b1 = fib
    }
}

print("The \(n)th Fibonacci number is \(fib)")

// FUNCTIONS
// FUNCTIONS BASICS
func printMyName() {
    print("My name is Jesse Mensah")
}

// parameters
func printMultiplesOfFive(value: Int) {
    print("\(value) * 5 = \(value * 5)")
}

// two parameters
func printMultipleOf(multiplier: Int, andValue: Int) {
    print("\(multiplier) * \(andValue) = \(multiplier * andValue)")
}
printMultipleOf(multiplier: 10, andValue: 20)


func printMultipleOf(_ multiplier: Int, andValue: Int) {
    print("\(multiplier) * \(andValue) = \(multiplier * andValue)")
}
printMultipleOf(10, andValue: 20)


// return values
func multiply(_ number: Int, by multiplier: Int) -> Int {
    return number * multiplier
}
let result = multiply(4, by: 2)

func multiplyDivide(_ number: Int, by factor: Int) -> (product: Int, quotient: Int) {
    return (number * factor, number / factor)
}

let results = multiplyDivide(3, by: 2)
let product = results.product
let quotient = results.quotient


// OPTIONALS
// NILS
var devName = "Jesse Amoako Mensah"
var devAge = 30
var devOccupation = "Software Developer & Author"

// force unwrap the optional
var resulti: Int? = 30
print(resulti)

if resulti != nil {
    print("Author is \(resulti!)")
} else {
    print("No author")
}

// optional binding
if let unwrappedResult = resulti {
    print("Author is \(unwrappedResult)")
} else {
    print("No author.")
}


// check the condition only before executing
func guardMyCastle(name: String?) {
    guard let castleName = name else {
        print("No Castle")
        return
    }
    
    print("Your castle called \(castleName) was guarded!")
}

// COLLECTION TYPES 
