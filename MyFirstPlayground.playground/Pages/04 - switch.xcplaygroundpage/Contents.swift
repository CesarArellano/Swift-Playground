
// Switch with String

var country = "Chile" // Variable
let msg = "The language is" // Constant

switch country {
case "Mexico", "Colombia", "Peru", "Chile", "Argentina":
    print("\(msg) Spanish")
case "EU":
    print("\(msg) English")
case "France":
    print("\(msg) French")
default:
    print("\(msg) unknown")
}


// Switch with In

let age = 17
let msg2 = "You're a" // Constant

switch age {
case 0, 1, 2, 3:
    print("\(msg2) baby")
case 4...10:
    print("\(msg2) child")
case 11..<18:
    print("\(msg2) teenager")
case 18...70:
    print("\(msg2) adult")
case 71..<100:
    print("\(msg2) elder")
default:
    print("Amazing!!!")
}
