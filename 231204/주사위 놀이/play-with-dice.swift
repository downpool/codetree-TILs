import Foundation

var line = readLine()!.split(separator: " ").map { Int($0)! }
var numberArray: [Int] = Array(repeating: 0, count: 6)

for i in line {
    numberArray[i - 1] += 1
}

for i in stride(from: 0, to: 6, by: 1) {
    print("\(i + 1) - \(numberArray[i])")
}