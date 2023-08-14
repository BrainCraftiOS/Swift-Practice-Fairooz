// Assignment Operators
let b = 10
var a = 5
print(a, b)
a = b
print(a, b)
let (x, y) = (1, 2)
print(x, y)


// Arithmetic Operators
print(a + b)
print(a - b)
print(a * b)
print(a / b)


// Remainder Operator
print(9 % 4)


// Unary Plus Operator
let minusSix = -6
let alsoMinusSix = +minusSix
print(minusSix, alsoMinusSix)


// Unary Minus Operator
let three = 3
let minusThree = -three
let plusThree = -minusThree
print(three, minusThree, plusThree)


// Compound Assignment Operators
a += 2
print(a)


// Comparison Operators
print(a == b) // !=, <, >, <=, >=


// Ternary Conditional Operator
let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)
print(rowHeight)


// Nil-Coalescing Operator
let defaultColorName = "red"
var userDefinedColorName: String?   // defaults to nil
var colorNameToUse = userDefinedColorName ?? defaultColorName
print(colorNameToUse)


// Closed Range Operator
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}


// Half-Open Range Operator
let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}


// One-Sided Ranges
for name in names[2...] {
    print(name)
}


// Logical Operators
let allowedEntry = false
if !allowedEntry {
    print("ACCESS DENIED")
} // &&, ||
