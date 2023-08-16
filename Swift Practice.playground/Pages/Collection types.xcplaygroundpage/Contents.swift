// Creating Array
var someInts: [Int] = []
print("someInts is of type [Int] with \(someInts.count) items.")

var threeDoubles = Array(repeating: 0.0, count: 3)
print(threeDoubles)

var shoppingList: [String] = ["Eggs", "Milk"]
print(shoppingList)


// Accessing and Modifying an Array
shoppingList.append("Flour")
shoppingList += ["Baking Powder", "Chocolate Spread", "Cheese", "Butter"]
print("shoppingList contains \(shoppingList.count) items.")

shoppingList[4...6] = ["Bananas", "Apples"]
print("shoppingList contains \(shoppingList.count) items.")

shoppingList.insert("Maple Syrup", at: 0)
print("shoppingList contains \(shoppingList.count) items.")

let mapleSyrup = shoppingList.remove(at: 0)
print("shoppingList contains \(shoppingList.count) items.")


// Iterating Over an Array
for item in shoppingList {
    print(item)
}

for (index, value) in shoppingList.enumerated() {
    print("Item \(index + 1): \(value)")
}

print(shoppingList[2])


// Creating Set
var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")

var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
print(favoriteGenres)


// Accessing and Modifying a Set
letters.insert("a")
print(letters)

if let removedGenre = favoriteGenres.remove("Rock") {
    print("\(removedGenre)? I'm over it.")
} else {
    print("I never much cared for that.")
}

if favoriteGenres.contains("Funk") {
    print("I get up on the good foot.")
} else {
    print("It's too funky in here.")
}


// Iterating Over a Set
for genre in favoriteGenres {
    print("\(genre)")
}

for genre in favoriteGenres.sorted() {
    print("\(genre)")
}


// Performing Set Operations
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

print(oddDigits.intersection(evenDigits).sorted()) // create a new set with only the values common to both sets
print(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()) // create a new set with values in either set, but not both
print(oddDigits.union(evenDigits).sorted()) // create a new set with all of the values in both sets
print(oddDigits.subtracting(singleDigitPrimeNumbers).sorted()) // create a new set with values not in the specified set


// Set Membership and Equality
let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

print(houseAnimals == farmAnimals) // determine whether two sets contain all of the same values
print(houseAnimals.isSubset(of: farmAnimals)) // determine whether all of the values of a set are contained in the specified set
print(houseAnimals.isStrictSubset(of: farmAnimals)) // determine whether a set is a subset, but not equal to, a specified set
print(farmAnimals.isSuperset(of: houseAnimals)) // determine whether a set contains all of the values in a specified set
print(farmAnimals.isStrictSuperset(of: houseAnimals)) // etermine whether a set is a superset, but not equal to, a specified set
print(farmAnimals.isDisjoint(with: cityAnimals)) // determine whether two sets have no values in common



// Creating Dictionary
var namesOfIntegers: [Int: String] = [:]
print("namesOfIntegers is of type Dict<Int:String> with \(namesOfIntegers.count) items.")

var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
print(airports)


// Accessing and Modifying a Dictionary
airports["LHR"] = "London"
print(airports)
airports["LHR"] = "London Heathrow"
print(airports)

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue).")
}


// Iterating Over a Dictionary
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}

for airportName in airports.values {
    print("Airport name: \(airportName)")
}
