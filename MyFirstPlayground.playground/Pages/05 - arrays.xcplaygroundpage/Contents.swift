// Arrays

let name = "César"
let surname = "Arellano"
let company = "Apple"
let age = "22"

let myFirstArray = Array<String>() // Classic way to declare arrays
var myModernArray = [String]() // Modern way to declare arrays.
var myModernArray2: [String] = [] // Modern way to declare arrays.

// Add data

myModernArray.append(name)
myModernArray.append(surname)
myModernArray.append(company)
myModernArray.append(age)


print(myModernArray)


// Add data set

myModernArray.append(contentsOf: ["Give me like", "Subscribed"])

// myModernArray += ["Give me like", "Subscribed"] * Alternative *

print(myModernArray)

// Access to data
print(myModernArray[2])

// Modify data
myModernArray[5] = "Other thing"
print(myModernArray)

// Delete data
myModernArray.remove(at: 1)
print(myModernArray)

print("=================")

// Iterate data

for value in myModernArray {
    print(value)
}


// Show length

print(myModernArray.count)
