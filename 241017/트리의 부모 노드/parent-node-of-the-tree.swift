import Foundation

func findParents() {
    // 입력
    let n = Int(readLine()!)!
    
    // 인접 리스트 초기화
    var tree = [[Int]](repeating: [], count: n + 1)
    
    // 트리 간선 정보 입력
    for _ in 0..<n-1 {
        let edge = readLine()!.split(separator: " ").map { Int($0)! }
        let a = edge[0]
        let b = edge[1]
        tree[a].append(b)
        tree[b].append(a)
    }
    
    // 부모 노드를 저장할 배열
    var parent = [Int](repeating: 0, count: n + 1)
    
    // BFS를 이용해 부모 찾기
    var queue = [1]
    parent[1] = 1 // 루트 노드는 자기 자신을 부모로 설정 (임의의 값)
    
    while !queue.isEmpty {
        let current = queue.removeFirst()
        
        for neighbor in tree[current] {
            if parent[neighbor] == 0 {
                parent[neighbor] = current
                queue.append(neighbor)
            }
        }
    }
    
    // 결과 출력
    for i in 2...n {
        print(parent[i])
    }
}

findParents()