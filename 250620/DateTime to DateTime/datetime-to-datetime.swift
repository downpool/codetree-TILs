import Foundation

let inputLine = readLine()!
let numbers = inputLine.split(separator: " ").map { Int(String($0))! }
let a = numbers[0]
let b = numbers[1]
let c = numbers[2]

// Please write your code here.
var d = a * 24 * 60 + b * 60 + c - 11 * 24 * 60 - 11 * 60 - 11
print(d < 0 ? -1 : d)