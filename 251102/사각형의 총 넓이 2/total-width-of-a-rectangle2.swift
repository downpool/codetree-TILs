import Foundation

let n = Int(readLine()!)!

// Please write your code here.
var ansarr : [[Int]] = Array(repeating: Array(repeating: 0, count: 201), count: 201)

for _ in 0 ..< n {
    var lines = readLine()!.split(separator: " ").map{Int($0)!} 

    lines[0] += 100
    lines[1] += 100
    lines[2] += 100
    lines[3] += 100

    for i in lines[0] ..< lines[2] {
        for j in lines[1] ..< lines[3] {
            ansarr[i][j] = 1
        }
    }
}

var count: Int = 0

for i in 0 ..< 201 {
    for j in 0 ..< 201 {
        if ansarr[i][j] == 1 {
            count += 1
        }
    }
}

print(count)