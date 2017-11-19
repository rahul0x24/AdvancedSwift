/*:
 ## Session 1: Functional Swift
 ### 1.4 Higher-order Functions
 */

//1. Transform [1,2,3,4,5] into Squares
//1.1 Using For Loop
var transformedArray = [Int]()
for number in (1...5) {
    transformedArray.append(number * number)
}
transformedArray

//1.2 Using Map
let transformed = (1...5).map { $0 * $0 }
print(transformed)

//1.3 Convert names of fruits to uppercase
let fruits = ["Apple", "Oranges", "Grapes"]
let upperFruitsMapped = fruits.map { $0.count }
upperFruitsMapped //should be ["APPLE","ORANGES,"GRAPES"]

//1.4
let scores = [100,80,85]
let formatted = scores.map { "Your Score is \($0)" }
print(formatted)
let passOrFail = scores.map { $0 > 85 ? "Pass" : "Fail" }
print(passOrFail)

let i: Int? = nil
let j = i.map { "Your number is \($0)" } ?? "Unknown Value"
print(j)

//2 Convert [[1,2,3],[4,5,6],[7,8,9]] to [1,2,3,4,5,6,7,8,9]
//2.1 Using For Loop
var flatMappedArray = [Int]()
for array in [[1,2,3],[4,5,6],[7,8,9]] {
    for number in array {
        flatMappedArray.append(number)
    }
}
flatMappedArray

//2.2 Using flatMap
let flatMapped = [[1,2,3],[4,5,6],[7,8,9]].flatMap { $0 }
print(flatMapped)

//2.3
let flattenArray = ["Encore",nil,"Recovery",nil,"Revival"].flatMap { $0 }
print(flattenArray)

//2.4


//3. Filter even numbers from [1,2,3,4,5]
//3.1 Using For Loop
var filteredArray = [Int]()
for number in (1...5) {
    if number % 2 == 0 {
        filteredArray.append(number)
    }
}
filteredArray

//3.2 Using Filter
let filteredArrayArray = (1...5).filter { $0 % 2 == 0}
print(filteredArrayArray)

let nilFilterArray = ["1",nil,"2"]
let filteredNilArray = nilFilterArray.filter { $0 != nil }
print(filteredNilArray)

//4. Calculate the sum of [1,2,3,4,5]
//5.1 Using For Loop
var reducedNumber = 0
for number in (1...5) {
    reducedNumber += number
}
reducedNumber

//4.2 Using Reduce
print([1,2,3,4,5].reduce(0, +))

let animals = ["Lion","Tiger","Deer"]
let longEnough = animals.reduce(true) { $0 && $1.count > 5 }
longEnough

let flattenedReducedArray = [[1,2,3],[4,5,6]].reduce([]) { $0 + $1 }
print(flattenedReducedArray)
