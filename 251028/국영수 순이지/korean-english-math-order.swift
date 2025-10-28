import Foundation

let n = Int(readLine()!)!
var students: [(name: String, korean: Int, english: Int, math: Int)] = []

for _ in 0..<n {
    let inputs = readLine()!.split(separator: " ").map { String($0) }
    let name = inputs[0]
    let korean = Int(inputs[1])!
    let english = Int(inputs[2])!
    let math = Int(inputs[3])!
    students.append((name: name, korean: korean, english: english, math: math))
}

// Please write your code here.
let sorteds = students.sorted(by: {
    if $0.korean == $1.korean {
        if $0.english == $1.english {
            return $0.math > $1.math
        } else {
            return $0.english > $1.english
        }
    } else {
        return $0.korean > $1.korean
    }
})

for i in sorteds {
    print("\(i.name) \(i.korean) \(i.english) \(i.math)")
}