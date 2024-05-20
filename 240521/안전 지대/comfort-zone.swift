import Foundation

let nm = readLine()!.split(separator: " ").map({Int($0)!})

var graph = [[Int]](repeating: [Int](repeating: 0, count: nm[1]), count: nm[0])

for i in 0 ..< nm[0] {
    let line = readLine()!.split(separator: " ").map({Int($0)!})
    for j in 0 ..< nm[1] {
        graph[i][j] = line[j]
    }
}


var maxss: [Int] = []

for k in 1 ..< 100 {
    var graphs = graph
    var maxs = 0
    for i in 0 ..< nm[0] {
        for j in 0 ..< nm[1] {
            graphs[i][j] -= k
            if graphs[i][j] <= 0 { graphs[i][j] = 0 }
            maxs = max(graphs[i][j], maxs)
        }
    }
    var count = 0
    if maxs <= 0 { break }
    for i in 0 ..< nm[0] {
        for j in 0 ..< nm[1] {
            if graphs[i][j] > 0 {
                dfs(i, j, &graphs)
                count += 1
            }
        }
    }
    maxss.append(count)
}

print((maxss.firstIndex(of: maxss.max()!)! + 1), maxss.max()!)

func dfs(_ x: Int, _ y: Int, _ graphs: inout [[Int]]) {
    if x < 0 || x >= nm[0] || y < 0 || y >= nm[1] || graphs[x][y] == 0 {
        return
    }
    
    graphs[x][y] = 0 

    dfs(x + 1, y, &graphs)
    dfs(x - 1, y, &graphs)
    dfs(x, y + 1, &graphs)
    dfs(x, y - 1, &graphs)

}