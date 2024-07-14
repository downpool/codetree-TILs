import Foundation

let n = Int(readLine()!)!

var dp: [[Int]] = []

// 입력을 받아 dp 배열 초기화
for _ in 0..<n {
    let row = readLine()!.split(separator: " ").map { Int($0)! }
    dp.append(row)
}

// dp 배열의 특정 연산 수행
// 예시: 첫 번째 열의 값들을 누적 합으로 업데이트
for i in stride(from: n - 2, through: 0, by: -1) {
    dp[i][0] += dp[i + 1][0]
}

// 예시: 마지막 행의 값들을 누적 합으로 업데이트
for j in 1..<n {
    dp[n - 1][j] += dp[n - 1][j - 1]
}
// dp 배열의 다른 연산 수행
// 예시: 각 위치에서의 최소 비용 경로를 구하기 위한 연산
for i in stride(from: n - 2, through: 0, by: -1) {
    for j in 1..<n {
        dp[i][j] += min(dp[i + 1][j], dp[i][j - 1])
    }
}

// 최종 dp 배열 출력
print(dp[0][n - 1])