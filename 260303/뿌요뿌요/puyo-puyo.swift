import Foundation

let n = Int(readLine()!)!
var grid = [[Int]]()

for _ in 0..<n {
    let row = readLine()!.split(separator: " ").map { Int($0)! }
    grid.append(row)
}

// Please write your code here.

var connect: Int = 0

func dfs(_ x: Int, _ y: Int, _ num: Int) {

    if x < 0 || y < 0 || x >= n || y >= n || grid[x][y] != num {
        return
    }

    grid[x][y] = 0
    connect += 1

    dfs(x + 1, y, num)
    dfs(x - 1, y, num)
    dfs(x, y + 1, num)
    dfs(x, y - 1, num)
}

var boomCount: Int = 0
var maxBlock: Int = 0

for i in 0 ..< n {
    for j in 0 ..< n {
        if grid[i][j] != 0 {
            dfs(i, j, grid[i][j])
            if connect >= 4 {
                boomCount += 1
            }
            maxBlock = maxBlock > connect ? maxBlock : connect 
            connect = 0
        }
    }
}

print(boomCount, maxBlock)