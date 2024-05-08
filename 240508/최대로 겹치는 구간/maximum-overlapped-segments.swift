import Foundation

let n = Int(readLine()!)!

var array = [Int](repeating: 0, count: 201)

for _ in 0..<n {
    let line = readLine()!.split(separator: " ").map({Int($0)!})
    if line[0] + 1 >= line[1] {
        continue
    }
    for i in (line[0] + 101) ... (line[1] + 99){
        array[i] += 1
    }
}
print(array.max()!)