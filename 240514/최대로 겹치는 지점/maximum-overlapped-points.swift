import Foundation

let n = Int(readLine()!)!

var array = [Int](repeating: 0, count: 101) 

for _ in 0 ..< n {
    let ab = readLine()!.split(separator: " ").map({Int($0)!})
    for i in ab[0] ... ab[1] {
        array[i] += 1
    }
}

print(array.max()!)