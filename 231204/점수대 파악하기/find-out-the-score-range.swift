import Foundation

var line = readLine()!.split(separator: " ").map { Int($0)! }
var score = Array(repeating: 0, count: 11)

for i in line {
    if i == 0 { break }
    let tens = i / 10
    score[tens] += 1
}

for i in stride(from: 10, to: 0, by: -1) {
    print("\(i * 10) - \(score[i])")
}