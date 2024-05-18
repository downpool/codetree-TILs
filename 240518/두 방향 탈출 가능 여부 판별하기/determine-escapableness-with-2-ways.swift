import Foundation

let nm = readLine()!.split(separator: " ").map({Int($0)!})

var graph = [[Int]](repeating: [Int](repeating: 0, count: nm[1]), count: nm[0])

for i in 0 ..< nm[0] {
    let line = readLine()!.split(separator: " ").map({Int($0)!})
    for j in 0 ..< nm[1] {
        graph[i][j] = line[j]
    }
}

var ending = 0

func dfs(_ x: Int, _ y: Int) {
    if graph[x][y] == 0 {
        return
    }

    if x == nm[0] - 1 && y == nm[1] - 1 {
        ending = 1
        return
    }

    if x == nm[0] - 1 {
        dfs(x, y + 1)
    }else if y == nm[1] - 1 {
        dfs(x + 1, y)
    }else{
        dfs(x, y + 1)
        dfs(x + 1, y)
    }
}

dfs(0, 0)

print(ending)