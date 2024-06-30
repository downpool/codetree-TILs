import Foundation

let nm = readLine()!.split(separator: " ").map{Int($0)!}

var graph = [[Bool]](repeating: [Bool](repeating: false, count: nm[0] + 1), count: nm[0] + 1)

for _ in 0 ..< nm[1] {
    let line = readLine()!.split(separator: " ").map{Int($0)!}

    graph[line[0]][line[1]] = true
    graph[line[1]][line[0]] = true
}

var visited = [Bool](repeating: false, count: nm[0] + 1)
var visiting: [Int] = []

func dfs(_ v: Int) {
    visited[v] = true
    visiting.append(v)

    for i in 1 ... nm[0] {
        if graph[v][i] && !visited[i] {
            dfs(i)
        }
    }
}

dfs(1)

print(visiting.count - 1)