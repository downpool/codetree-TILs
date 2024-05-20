import Foundation

let ns = readLine()!.split(separator: " ").map({Int($0)!})
var line = readLine()!.split(separator: " ").map({Int($0)!})

line.sort()
var gap = 100000

for i in 0 ..< line.count - 1 {
    for j in i + 1 ..< line.count {
        var temp = line.reduce(0, +) - line[i] - line[j]
        gap = abs(ns[1] - temp) < gap ? abs(ns[1] - temp) : gap
    }
}
print(gap)