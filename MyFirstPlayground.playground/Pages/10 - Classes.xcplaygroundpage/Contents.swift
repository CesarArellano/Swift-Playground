// Clases
class Programmer {

  init(name: String, age: Int, languages: [ Language ] ) {
    self.name = name;
    self.age = age;
    self.languages = languages
    self.friends = []
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

  func code() {
    print("\( name ) is programming in: \( languages )")
  }

  func helloFriends() -> Void {
    if friends.isEmpty {
      return;
    }
    print("\( name ) is greeting to: \( friends[0].name )")
  }
}

let cesar = Programmer(name: "César", age: 22, languages: [ .swift, .kotlin, .dart ])
cesar.code()
cesar.helloFriends()

let jair = Programmer(name: "Jair", age: 22, languages: [ .kotlin, .javascript ])
jair.code()

jair.friends = [ cesar ]
jair.helloFriends()


