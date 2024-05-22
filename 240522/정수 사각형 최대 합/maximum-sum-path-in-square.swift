import Foundation

let n = Int(readLine()!)!

var dp : [[Int]] = Array(repeating: Array(repeating: 0, count: n + 1), count: n + 1)

for i in 1...n {
    dp[i] = readLine()!.split(separator: " ").map {Int($0)!}
    dp[i].insert(0, at: 0)
}

for i in 1 ... n {
    for j in 1 ... n {
        dp[i][j] = max(dp[i - 1][j] + dp[i][j], dp[i][j - 1] + dp[i][j])
    }
}

print(dp[n][n])