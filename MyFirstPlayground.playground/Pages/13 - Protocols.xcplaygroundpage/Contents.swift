// Protocols

protocol Shippeable {
  var street: String { get }
  var city: String { get }
  var zip: String { get }
}

struct Product: Shippeable {
  var id: String
  var name: String
  var street: String {
    get {
      return "street"
    }
  }
  var city: String {
    get {
      return "city"
    }
  }
  var zip: String {
    get {
      return "zip"
    }
  }
}