// Generics

func swapTwoValue<T>( a: inout T, b: inout T ) {
  let tempA = a
  a = b
  b = tempA
}

var valueA = "Subscribed" // 1
var valueB = "RayWayDay" // 2

print("Value A: \( valueA ) and ValueB: \( valueB ) 1")
swapTwoValue(a: &valueA, b: &valueB)
print("Value A: \( valueA ) and ValueB: \( valueB ) 2")


struct Stack<Element> {
  var items = [Element]()

  mutating func push( item: Element ) {
    items.append(item)
  }

  mutating func pop() -> Element {
    return items.removeLast()
  }
}

var genericStack = Stack<String>()

genericStack.push(item: "Swift")
genericStack.push(item: "Dart")
genericStack.push(item: "alwaysKeepLearning")


print( genericStack.items )


print(genericStack.pop())
print( genericStack.items )