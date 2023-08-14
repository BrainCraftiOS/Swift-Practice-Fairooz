// String Literals
let someString = "Some string literal value"
print(someString)
let quotation = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""
print(quotation)


// Initializing an Empty String
var emptyString = ""               // empty string literal
var anotherEmptyString = String()
print(emptyString.isEmpty)
print(anotherEmptyString.isEmpty)


// String Mutability
emptyString += "not empty anymore"
print(emptyString)


// Working with Characters
for character in "Dog!🐶" {
    print(character)
}
let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)


// String Interpolation
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
print(message)


// Accessing and Modifying a String
let greeting = "Guten Tag!"
print(greeting[greeting.startIndex])
print(greeting[greeting.index(before: greeting.endIndex)])
print(greeting[greeting.index(after: greeting.startIndex)])

let index = greeting.index(greeting.startIndex, offsetBy: 7)
print(greeting[index])

for index in greeting.indices {
    print("\(greeting[index]) ", terminator: "")
}


// Inserting
var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)
print(welcome)

welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))
print(welcome)


// Removing
welcome.remove(at: welcome.index(before: welcome.endIndex))
print(welcome)

let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)
print(welcome)


// Substrings
let greeting1 = "Hello, world!"
let index1 = greeting1.firstIndex(of: ",") ?? greeting1.endIndex
let beginning = greeting1[..<index1]

let newString = String(beginning)
print(newString)


// Comparing Strings
let quotation1 = "We're a lot alike, you and I."
let sameQuotation1 = "We're a lot alike, you and I."
if quotation1 == sameQuotation1 {
    print("These two strings are considered equal")
}

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]
var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1 ") {
        act1SceneCount += 1
    }
}
print("There are \(act1SceneCount) scenes in Act 1")

var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        mansionCount += 1
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        cellCount += 1
    }
}
print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")
