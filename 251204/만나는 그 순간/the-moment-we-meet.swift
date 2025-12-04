import Foundation

let maxT = 1000001
let firstLine = readLine()!
let firstParts = firstLine.split(separator: " ")
let n = Int(firstParts[0])!
let m = Int(firstParts[1])!

var aInstructions = [(direction: Character, time: Int)]()
for _ in 0..<n {
    let line = readLine()!
    let parts = line.split(separator: " ")
    let direction = Character(String(parts[0]))
    let time = Int(parts[1])!
    aInstructions.append((direction: direction, time: time))
}

var bInstructions = [(direction: Character, time: Int)]()
for _ in 0..<m {
    let line = readLine()!
    let parts = line.split(separator: " ")
    let direction = Character(String(parts[0]))
    let time = Int(parts[1])!
    bInstructions.append((direction: direction, time: time))
}

// Please write your code here.

var pos_a: [Int] = Array(repeating: 0, count: maxT)
var pos_b: [Int] = Array(repeating: 0, count: maxT)

var time_a = 1
for i in 0 ..< n {
    var temp = aInstructions.first!
    aInstructions.remove(at: 0)
    var tempT = temp.time
    for j in 0 ..< tempT {
        if temp.direction == "R" {
            pos_a[time_a] = pos_a[time_a - 1] + 1;
        } else {
            pos_a[time_a] = pos_a[time_a - 1] - 1;
        }
        time_a += 1
    }
}
var time_b = 1
for i in 0 ..< m {
    var temp = bInstructions.first!
    bInstructions.remove(at: 0)
    var tempT = temp.time
    for j in 0 ..< tempT {
        if temp.direction == "R" {
            pos_b[time_b] = pos_b[time_b - 1] + 1;
        } else {
            pos_b[time_b] = pos_b[time_b - 1] - 1;
        }
        time_b += 1
    }
}
var ans = -1

for i in 1 ..< time_a {
    if pos_a[i] == pos_b[i] {
        ans = i
        break
    }
}

print(ans)