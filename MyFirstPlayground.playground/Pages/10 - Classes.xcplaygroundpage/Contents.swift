// Protocols: Dedicados a definir propiedades o funciones que deben tener nuestras clases o estructuras.
protocol MyProtocol {
  static func printName()
}

// Classes
class Programmer: MyProtocol {

  init(name: String, age: Int, languages: [ Language ] ) {
    self.name = name;
    self.age = age;
    self.languages = languages
    self.friends = []
    self.alias = nil
  }
  
  // Exclusivo de las clases, para liberar memoria, etc..
  deinit {
    alias = ""
  }

  enum Language {
    case swift
    case kotlin
    case javascript
    case dart
  }

  let name: String
  let age: Int
  let languages: [ Language ]
  var friends: [ Programmer ]
  var alias: String?

  func code() {
    print("\( name ) is programming in: \( languages )")
  }

  static func printName() {
    print("Static property called: printName")
  }

  func helloFriends() -> Void {
    if friends.isEmpty {
      return;
    }
    print("\( name ) is greeting to: \( friends[0].name )")
  }

  func validateName() {
    guard name.count > 6 else {
      print("Name is NOT valid")
      return;
    }
    print("Name valid")
  }

  func checkMyOptional() {
    guard let value = alias else {
        print("myOptional is nil!")
        return
    }
    
    print("myOptional value is \(value)!")
  }

}

extension Programmer {

  func extensionFunction() {
    print("Method from class extension")
  }
  
}

// Struct 
struct SomeStruct {

  var name: String

  func validateName() {
    guard name.count > 6 else {
      print("Name is NOT valid")
      return;
    }
    print("Name valid")
  }
  
}

extension SomeStruct {

  func extensionFunction() {
    print("Method from struct extension")
  }
  
}

print("")
print("========================= César Class =================================")
let cesar = Programmer(name: "César Arellano", age: 22, languages: [ .swift, .kotlin, .dart ])
cesar.code()
cesar.helloFriends()
cesar.validateName()
cesar.checkMyOptional()

print("")
print("========================= Jair Class =================================")
let jair = Programmer(name: "Jair", age: 22, languages: [ .kotlin, .javascript ])
jair.code()

jair.friends = [ cesar ]
jair.helloFriends()
jair.extensionFunction()
jair.validateName()
jair.alias = "Jairo"
jair.checkMyOptional()

let cesarStruct = SomeStruct(name: "César")
cesarStruct.extensionFunction()
print(cesarStruct)

// Inheritance
print("")
print("=========================Inheritance=================================")
class Vehicle {
  var wheels: Int
  var description: String {
    return "Car"
  }

  init(wheels: Int) {
    self.wheels = wheels
  }

  func start() {
    print("Start engine...")
  }

  func makeNoise() {
    print("make Noise...")
  }
}

class BMW: Vehicle {
  func stop() {
    print("Stop engine...")
  }
}

class BMW_4x4: BMW {

  override var description: String {
    return "Sedan Car"
  }

  override func makeNoise() {
    print("override Make Noise...")
  }
}

let bmw = BMW(wheels: 4)
bmw.start()
bmw.stop()
bmw.makeNoise()
print( bmw.description )

let bmw_4x4 = BMW_4x4(wheels: 4)
bmw_4x4.stop()
bmw_4x4.makeNoise()
print( bmw_4x4.description )

var newBmw = bmw;
var anotherBmw = bmw;

/*
  Las clases no hacen copias de la clase cuando se asignan a otras variables, hacen una referencia,
  en los Structs si se hacen copias y se genera sólo el constructor (init). 
*/
print(bmw.wheels)
print(newBmw.wheels)
bmw.wheels = 8
print(bmw.wheels)
print(newBmw.wheels)


print("")
print("========================= Static method with Class =================================")
Programmer.printName()


print("")
print("========================= Struct =================================")

struct Person {
  var salary: Int = 10000
  
  var salaryPerMonth: Int {
    get {
      return salary / 12
    }

    set(newValue) {
      print("newValue: \( newValue * 12 )")
      self.salary = newValue * 12
    }
  }
}

var person = Person()
print( person.salaryPerMonth )
person.salaryPerMonth = 1000
print( person.salaryPerMonth )