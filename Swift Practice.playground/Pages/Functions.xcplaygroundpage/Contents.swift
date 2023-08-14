import Foundation


// Functions Without Parameters
func sayHelloWorld() -> String {
    return "hello, world"
}
print(sayHelloWorld())


// Functions With one Parameter
func greetAgain(person: String) -> String {
    return "Hello again, " + person + "!"
}
print(greetAgain(person: "Anna"))


// Functions With Multiple Parameters
func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return greetAgain(person: person)
    } else {
        return greet(person: person, alreadyGreeted: true)
    }
}
print(greet(person: "Tim", alreadyGreeted: true))


// Functions Without Return Values
func greet1(person: String) {
    print("Hello, \(person)!")
}
greet1(person: "Dave")


// Functions With one Return Values
func printAndCount(string: String) -> Int {
    return string.count
}
var cnt = printAndCount(string: "hello, world")
print(cnt)


// Functions with Multiple Return Values
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)")


// Function Types
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
var mathFunction: (Int, Int) -> Int = addTwoInts
print("Result: \(mathFunction(2, 3))")


// Function Types as Parameter Types
func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5)


// Function Types as Return Types
func stepForward(_ input: Int) -> Int {
    return input + 1
}

func stepBackward(_ input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}

var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)

print("Counting to zero:")
while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}
print("zero!")


// Nested Functions
func chooseStepFunction1(backward: Bool) -> (Int) -> Int {
    func stepForward1(input: Int) -> Int { return input + 1 }
    func stepBackward1(input: Int) -> Int { return input - 1 }
    return backward ? stepBackward1 : stepForward1
}
var currentValue1 = -4
let moveNearerToZero1 = chooseStepFunction1(backward: currentValue1 > 0)
// moveNearerToZero now refers to the nested stepForward() function
while currentValue1 != 0 {
    print("\(currentValue1)... ")
    currentValue1 = moveNearerToZero1(currentValue1)
}
print("zero!")
