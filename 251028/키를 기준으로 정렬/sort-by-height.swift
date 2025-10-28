import Foundation

let n = Int(readLine()!)!
var students = [(name: String, height: Int, weight: Int)]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    let name = String(input[0])
    let height = Int(input[1])!
    let weight = Int(input[2])!
    students.append((name: name, height: height, weight: weight))
}

// Please write your code here.
var sortedArr = students.sorted(by: {$0.height < $1.height})
for i in sortedArr {
    print("\(i.name) \(i.height) \(i.weight)")
}