import Foundation

let nm = readLine()!.split(separator: " ").map({Int($0)!})

var graph = [[Int]](repeating: [Int](repeating: 0, count: nm[1]), count: nm[0])

for i in 0 ..< nm[0] {
    let line = readLine()!.split(separator: " ").map({Int($0)!})
    for j in 0 ..< nm[1] {
        graph[i][j] = line[j]
    }
}

func inRange(_ i: Int, _ j: Int) -> Bool {
    return i >= 0 && i < nm[0] && j >= 0 && j < nm[1] && (graph[i][j] == 1)
}

func bfs(_ i: Int, _ j: Int) {
    let movei = [1, 0, -1, 0]
    let movej = [0, 1, 0, -1]
    var queue = [[i, j]]

    while !queue.isEmpty {
        let node = queue[0]
        queue.removeFirst()

        for k in 0 ..< 4 {
            if inRange(node[0] + movei[k], node[1] + movej[k]) {
                graph[node[0] + movei[k]][node[1] + movej[k]] = 0
                queue.append([node[0] + movei[k], node[1] + movej[k]])
            }
        }
    }
}
bfs(0, 0)

if graph[nm[0] - 1][nm[1] - 1] == 0 {
    print(1)
}else{
    print(0)
}