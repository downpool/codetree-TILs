import Foundation

let rectAInput = readLine()!.split(separator: " ").map { Int($0)! }
let rectBInput = readLine()!.split(separator: " ").map { Int($0)! }
let rectMInput = readLine()!.split(separator: " ").map { Int($0)! }

let aX1 = rectAInput[0], aY1 = rectAInput[1], aX2 = rectAInput[2], aY2 = rectAInput[3]
let bX1 = rectBInput[0], bY1 = rectBInput[1], bX2 = rectBInput[2], bY2 = rectBInput[3]
let mX1 = rectMInput[0], mY1 = rectMInput[1], mX2 = rectMInput[2], mY2 = rectMInput[3]

// Please write your code here.

var ansarr: [[Bool]] = Array(repeating: Array(repeating: false, count: 2001), count: 2001)

for i in aX1 ..< aX2 {
    for j in aY1 ..< aY2 {
        ansarr[i + 1000][j + 1000] = true
    }
}

for i in bX1 ..< bX2 {
    for j in bY1 ..< bY2 {
        ansarr[i + 1000][j + 1000] = true
    }
}

for i in mX1 ..< mX2 {
    for j in mY1 ..< mY2 {
        ansarr[i + 1000][j + 1000] = false
    }
}

var count: Int = 0

for i in 0 ..< 2001 {
    for j in 0 ..< 2001 {
        if ansarr[i][j] {
            count += 1
        }
    }
}

print(count)