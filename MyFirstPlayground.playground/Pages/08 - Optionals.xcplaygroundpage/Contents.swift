// Optionals

let myString = "RWD"
let myInt = Int(myString)

print(myInt)

if myInt != nil {
    // Unwrap option (force unwrapping)
    print(myInt! + 10)
}

// Optional Definition

var myNewString:String?
print(myNewString)

myNewString = "Subscribed"
if myNewString != nil {
    // Unwrap option (force unwrapping)
    print(myNewString)
}

// Optional Link

if let myNolNilString = myNewString {
    print(myNolNilString)
} else {
    print(myNewString)
}


