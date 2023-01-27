// Dictionaries

let myOldDictionary = Dictionary<String, Int>()
var myNewDictionary = [String:Int]()

// Add values
myNewDictionary = ["César": 22, "Jaqueline": 22, "Melissa": 21]
print(myNewDictionary)

// Add new value
myNewDictionary["Víctor"] = 57;
myNewDictionary["Paty"] = 49;
myNewDictionary["Pedro"] = 10;

print(myNewDictionary)

// Access to data
print(myNewDictionary["Pedr"] ?? 0)

// Update data
myNewDictionary["Jaqueline"] = 23
print(myNewDictionary["Jaqueline"] ?? 0)

// Delete data
myNewDictionary["Pedro"] = nil
print(myNewDictionary)
