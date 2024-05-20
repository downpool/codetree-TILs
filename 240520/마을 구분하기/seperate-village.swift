import Foundation

let n = Int(readLine()!)!

var grid = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)

for i in 0 ..< n {
    let line = readLine()!.split(separator: " ").map({Int($0)!})
    for j in 0 ..< n {
        grid[i][j] = line[j]
    }
}
var islandCount = 0
var landSize = 0
func dfs(_ x: Int, _ y: Int) {
    if x < 0 || x >= n || y < 0 || y >= n || grid[x][y] != 1 {
        return
    }

    grid[x][y] = 0
    landSize += 1

    dfs(x, y + 1)
    dfs(x, y - 1)
    dfs(x + 1, y)
    dfs(x - 1, y)

}
var lands: [Int] = []

for i in 0 ..< n {
    for j in 0 ..< n {
        if grid[i][j] == 1 {
            dfs(i, j)
            lands.append(landSize)
            islandCount += 1
            landSize = 0
        }
    }
}

lands.sort()
print(islandCount)
for i in lands {
    print(i)
}