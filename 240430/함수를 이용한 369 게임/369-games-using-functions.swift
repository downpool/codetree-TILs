import Foundation

var ab = readLine()!.split(separator: " ").map({Int($0)!})
var count = 0
for k in stride (from: ab[0], through: ab[1], by: 1) {
    if in369(k) || is3n(k) {
        count += 1
    }
}

print(count)

func in369(_ n: Int) -> Bool {
    for i in String(n) {
        if i == "3" || i == "6" || i == "9" {
            return true
        }
    }
    return false
}

func is3n(_ n: Int) -> Bool {
    return n % 3 == 0
}