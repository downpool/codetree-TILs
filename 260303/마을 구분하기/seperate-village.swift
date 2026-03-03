import Foundation

let n = Int(readLine()!)!
var grid = [[Int]]()
for _ in 0..<n {
    grid.append(readLine()!.split(separator: " ").map { Int($0)! })
}

// Please write your code here.

var landSize: Int = 0

func dfs(_ x: Int, _ y: Int) {
    if x < 0 || y < 0 || x >= n || y >= n || grid[x][y] == 0 {
        return
    } 

    grid[x][y] = 0
    landSize += 1

    dfs(x + 1, y)
    dfs(x - 1, y)
    dfs(x, y - 1)
    dfs(x, y + 1)
}
var lands: [Int] = []

for i in 0 ..< n {
    for j in 0 ..< n {
        if grid[i][j] == 1 {
            dfs(i, j)
            lands.append(landSize)
            landSize = 0
        }
    }
}

print(lands.count)
lands.sort()

for i in lands {
    print(i)
}