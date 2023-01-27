
let myStringArray: [String] = ["César", "Melissa", "Víctor", "Patricia", "Jaqueline", "Raúl", "Jair"]
let myNewDictonary: [String : Int ] = ["César": 22, "Jaqueline": 22, "Melissa": 21]


// Loops
for element in myStringArray {
    print(element)
}

for dictElement in myNewDictonary {
    print(dictElement)
}

for index in 0..<10 {
    print( index )
}

print("==========================================")

for index in 0...10 {
    print( index )
}

print("==========================================")

myStringArray.forEach{ (element) in
    print(element)
}

print("==========================================")

myNewDictonary.forEach{ (key, value) in
    print(key, value)
}

print("==========================================")

var myNumberArray: [Int] = []

for index in 1...20 {
    myNumberArray.append(index)
}
print(myNumberArray)

// While
print("==========================================")

var index = 21

while index <= 30 {
    myNumberArray.append(index)
    index += 1;
}

print(myNumberArray)


// Repeat While (do while)
print("==========================================")

index = 0

repeat {
    print(myNumberArray[index])
    index += 1;
} while index <= 10



