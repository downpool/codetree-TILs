import Foundation

let n = Int(readLine()!)!

let MOD = 10007
var INF = 100000000

var line = [Int](repeating: INF, count: max(6, n + 1))

line[0] = 0
line[1] = 1
line[2] = 2
line[3] = 3
line[4] = 5
line[5] = 9

if n > 5 {
    for i in 6 ... n {
        line[i] = (line[i - 1] + line[i - 2] + line[i - 5]) % MOD
    }
}

print(line[n])