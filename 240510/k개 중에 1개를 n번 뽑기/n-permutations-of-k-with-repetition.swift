import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
var n = input[0], m = input[1]
var visited = [Bool](repeating: false, count: n + 1)

var selected: [Int] = []

func prints() {
    selected.forEach { print($0, terminator: " ") }
    print()
}

func dfs(_ cnt: Int) {
    if cnt == m {
        prints()
        return
    }
    
    // for i in 0...n {
    //     if !visited[i] {
    //         visited[i] = true
    //         dfs(nums: nums + [i])
    //         visited[i] = false
    //     }
    // }
    for i in 1...n {
        selected.append(i)
        dfs(cnt + 1)
        selected.removeLast()
    }
}

dfs(0)