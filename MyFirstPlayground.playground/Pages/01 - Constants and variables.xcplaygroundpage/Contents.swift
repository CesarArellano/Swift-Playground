// Variables
/*
  This is a
  multiline commentary
*/
var myFirstVariable = "Hello"
var myFirstNumber = 15

myFirstVariable = "Hey RayWayDay"
myFirstNumber = 10;

var changeMyFirstNumber = String(myFirstNumber)

print("\(myFirstVariable), \(myFirstNumber + 1) \(changeMyFirstNumber)" )


// Constants

let myFirstConstant = 200

// This is unacceptable myFirstConstant = 100

print(myFirstConstant)

let mySecondConstant = myFirstVariable

print(mySecondConstant)

// Tuples

let (firstValue, secondValue) = ("Swift", "Beta")

print(firstValue)
print(secondValue)

typealias Name = String // Name ahora es igual que String (contiene todos sus métodos)
let username: Name = "RayWayDay"
print(username)