import Foundation

let firstLine = readLine()!
let tokens = firstLine.split(separator: " ").map { Int($0)! }
let n = tokens[0]
let m = tokens[1]
let k = tokens[2]

var penalizedPerson = [Int]()
for _ in 0..<m {
    penalizedPerson.append(Int(readLine()!)!)
}

// Please write your code here.
var stu: [Int] = Array(repeating: 0, count: n + 1)

var ans = -1
for i in penalizedPerson {
    stu[i] += 1
    if stu[i] >= k {
        ans = i
        break
    }
}
print(ans)