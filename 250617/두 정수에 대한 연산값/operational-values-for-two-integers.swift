import Foundation

let numbers = readLine()!.split(separator: " ").map { Int($0)! }
var a = numbers[0]
var b = numbers[1]

// Please write your code here.


if a > b {
    print(a + 25, b * 2)
}else{
    print(a * 2, b + 25)
}