// Functions

func myFirstFunction() {
    print("Hello World!")
}

func sum(num1: Int, num2: Int) {
    print(num1 + num2)
}

func sumWithReturn(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

myFirstFunction()
sum(num1: 10, num2: 20)

let result = sumWithReturn(num1: 20, num2: 21)
print( result )
