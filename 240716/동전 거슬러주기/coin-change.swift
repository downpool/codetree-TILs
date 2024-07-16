import Foundation

let INF = 10000000
let NM = readLine()!.split(separator: " ").map { Int($0)! }

let coins = readLine()!.split(separator: " ").map { Int($0)! }

var counts: [Int] = [Int](repeating: INF, count: NM[1] + 1)

counts[0] = 0

for i in 1 ... NM[1] {
    for j in 0 ..< NM[0] {
        if i >= coins[j] {
            counts[i] = min(counts[i - coins[j]] + 1, counts[i])
        }
    }
}

if counts[counts.count - 1] == INF {
    print(-1)
}else{
    print(counts[counts.count - 1])
}