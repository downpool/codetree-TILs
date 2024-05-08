import Foundation

let count = Int(readLine()!)!

let line = readLine()!.split(separator: " ").map({Int($0)!})

var array: [Int] = []

for i in 0 ..< count {
    array.append(line[i])
    array.sort()
    if i % 2 == 0 {
        print(array[i / 2], terminator: " ")
    }
}