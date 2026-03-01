import Foundation

let firstLine = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = firstLine[0]
let m = firstLine[1]
var grid = [[Int]]()
for _ in 0..<n {
    let row = readLine()!.split(separator: " ").map { Int(String($0))! }
    grid.append(row)
}
// Please write your code here.
var ans: Int = 0
func dfs(_ x: Int, _ y: Int) {
    if x >= n || y >= m || x < 0 || y < 0 || grid[x][y] != 1 {
        return
    }
    if x == (n - 1) && y == (m - 1) {
        ans = 1
        return
    } 
    dfs(x + 1, y)
    dfs(x, y + 1)
}
dfs(0, 0)

print(ans)
