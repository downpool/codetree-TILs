import Foundation

let n = Int(readLine()!)!

var grid = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
var dp = [[Int]](repeating: [Int](repeating: 1000001, count: n), count: n)

for i in 0 ..< n {
    let line = readLine()!.split(separator: " ").map({Int($0)!})
    for j in 0 ..< n {
        grid[i][j] = line[j]
    }
}
dp[0][0] = grid[0][0]
for i in 1 ..< n {
    dp[i][0] = min(dp[i - 1][0], dp[i][0])
    dp[0][i] = min(dp[0][i - 1], dp[0][i])
}
for i in 1 ..< n {
    for j in 1 ..< n {
        dp[i][j] = min(max(dp[i][j - 1], dp[i - 1][j]), grid[i][j])
    }
}

print(dp[n - 1][n - 1])