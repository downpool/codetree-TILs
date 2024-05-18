import Foundation

let nm = readLine()!.split(separator: " ").map({Int($0)!})

var graph = [[Int]](repeating: [Int](repeating: 0, count: nm[1]), count: nm[0])
var visited = [[Bool]](repeating: [Bool](repeating: false, count: nm[1]), count: nm[0])

for i in 0 ..< nm[0] {
    let line = readLine()!.split(separator: " ").map({Int($0)!})
    for j in 0 ..< nm[1] {
        graph[i][j] = line[j]
    }
}

var ending = 0

func inRange(_ x: Int, _ y: Int) -> Bool {
    if x >= 0 && x < nm[0] && y >= 0 && y < nm[1] {
        return true
    }else{
        return false
    }
}

func canGo(_ x: Int, _ y: Int) -> Bool {
    if !inRange(x, y) {
        return false
    }
    if visited[x][y] || graph[x][y] == 0 {
        return false
    }

    return true
}

func dfs(_ x: Int, _ y: Int) {
    if canGo(x, y + 1) {
        visited[x][y + 1] = true
        dfs(x, y + 1)
    }
    if canGo(x + 1, y) {
        visited[x + 1][y] = true
        dfs(x + 1, y)
    }
}

visited[0][0] = true
dfs(0, 0)

print(visited[nm[0] - 1][nm[1] - 1] ? 1 : 0)