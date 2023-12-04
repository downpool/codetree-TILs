import Foundation

var line = readLine()!.split(separator: " ").map { Int($0)! }
var nums: [Int] = Array(repeating: 0, count: 10)

for i in line {
    if i == 0 { break }
    let tens = i / 10
    if tens != 0 {
        nums[tens] += 1
    }
    // print(tens)
}

for i in stride(from: 1, to: 10, by: 1) {
    print("\(i) - \(nums[i])")
}