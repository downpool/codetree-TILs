import Foundation

let ab = readLine()!.split(separator: " ").map({Int($0)!})
var ans = ab[0]
for _ in stride(from: 1, to: ab[1], by: 1) {
    ans *= ab[0]
}

print(ans)