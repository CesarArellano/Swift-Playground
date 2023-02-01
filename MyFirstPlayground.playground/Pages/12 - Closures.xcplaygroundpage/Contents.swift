// Closures: Funciones anónimas que se pueden guardar en variables
func add42(number: Int) -> Int {
    return number + 42
}

let add42Closure = { (number: Int) -> Int in
    return number + 42
}

print( add42(number: 8) ) // 50
print( add42Closure(8) ) // 50


var names = ["Chris", "Alex", "RayWayDay", "Blog", "Apple"]
print(names)

// let namesSorted = names.sorted{ $0 < $1 }
let namesSorted = names.sorted(by: <)
print(namesSorted)


func saveUser(name: String, completionBlock: (Bool) -> Void ) {
  print("Saving user... \( name )")
  completionBlock(false)
}

saveUser(name: "César") { boolean in
  print("Closure \( boolean )")
}


enum BackendError {
  case customError
}

func getDataFromBackend(status: String,
  onSuccess: () -> Void,
  onFailure: ( BackendError ) -> Void 
) {
  if( status == "OK" ) {
    onSuccess()
  } else {
    onFailure(.customError)
  }
}


getDataFromBackend(status: "OK", onSuccess: {
  print("onSuccess")
}) { error in
  print("onFailure \( error )")
}

getDataFromBackend(status: "Error", onSuccess: {
  print("onSuccess")
}) { error in
  print("onFailure \( error )")
}