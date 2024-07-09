import Foundation

let nm = readLine()!.split(separator: " ").map({Int($0)!})
let INF = 1000000000

var graph = [[Int]](repeating: [Int](repeating: 0, count: nm[0] + 1), count: nm[0] + 1)

var dist = [Int](repeating: INF, count: nm[0] + 1)
var visited = [Bool](repeating: false, count: nm[0] + 1)


dist[nm[0]] = 0

for _ in 0 ..< nm[1] {
    let line = readLine()!.split(separator: " ").map({Int($0)!})
    graph[line[1]][line[0]] = line[2]
}

for i in 1 ... nm[0] {
    var min_idx = -1
    for j in 1 ... nm[0] {
        if visited[j] {
            continue
        }
        if min_idx == -1 || dist[min_idx] > dist[j] {
            min_idx = j
        }
    }

    visited[min_idx] = true

    for j in 1 ... nm[0] {
        if graph[min_idx][j] == 0 {
            continue
        }
        dist[j] = min(dist[j], dist[min_idx] + graph[min_idx][j])
    }
}

dist.sort()

for i in stride(from: dist.count - 1, to: 0, by: -1) {
    if dist[i] != INF {
        print(dist[i])
        break
    }
}