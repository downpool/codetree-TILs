import Foundation

let NK = readLine()!.split(separator: " ").map({Int($0)!})
var array = [Int](repeating: 0, count: NK[0] + 1)

for _ in 1 ... NK[1] {
    let temp = readLine()!.split(separator: " ").map({Int($0)!})
    for i in temp[0] ... temp[1] {
        array[i] += 1
    }
}

print(array.max()!)