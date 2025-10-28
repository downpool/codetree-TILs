import Foundation

let n = Int(readLine()!)!
var students = [(name: String, korean: Int, english: Int, math: Int, sum: Int)]()

for _ in 0..<n {
    let parts = readLine()!.split(separator: " ")
    let name = String(parts[0])
    let korean = Int(parts[1])!
    let english = Int(parts[2])!
    let math = Int(parts[3])!
    let sum = korean + english + math
    students.append((name: name, korean: korean, english: english, math: math, sum: sum))
}

// Please write your code here.

let sorteds = students.sorted(by: {$0.sum < $1.sum})

for i in sorteds {
    print("\(i.name) \(i.korean) \(i.english) \(i.math)")
}