import Foundation

let inputLine = readLine()!
let inputs = inputLine.components(separatedBy: " ")
let a = Int(inputs[0])!
let b = Int(inputs[1])!

// Please write your code here.

if a < b {
    print(a + 10, b * 2)
}else{
    print(a * 2, b + 10)
}