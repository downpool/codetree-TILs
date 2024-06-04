import Foundation

let nm = readLine()!.split(separator: " ").map({Int($0)!})

var graph = [Int](repeating: 0, count: nm[0] + 1)

for i in 0 ... nm[0] {
    graph[i] = i
}

func union(_ a: Int, _ b: Int) {
    var aa = find(a)
    var bb = find(b)
    if aa < bb {
        graph[aa] = bb
    }else{
        graph[bb] = aa
    }
}

func find(_ n: Int) -> Int {
    if graph[n] == n {
        return n
    }else{
        return find(graph[n])
    }
}

for _ in 0 ..< nm[1] {
    let line = readLine()!.split(separator: " ").map({Int($0)!})

    if line[0] == 0 {
        union(line[1], line[2])
    }else{
        let ai = find(line[1])
        let bi = find(line[2])
        if ai == bi {
            print(1)
        }else{
            print(0)
        }
    }
}