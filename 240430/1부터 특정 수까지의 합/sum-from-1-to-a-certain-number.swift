import Foundation

let n = Int(readLine()!)!

func sumAndDiv(_ n: Int) -> Int {
    var sum = 0
    for i in stride(from: 1, through: n, by: 1) {
        sum += i
    }
    return sum / 10
}

print(sumAndDiv(n))