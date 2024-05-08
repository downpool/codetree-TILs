import Foundation

let n = Int(readLine()!)!

var array = readLine()!.split(separator: " ").map({Int($0)!})
var makeArray = [Int](repeating: 0, count: n)

array.sort()

for i in 0 ..< n {
    makeArray.append(array[i] + array[array.count - 1 - i])
}

print(makeArray.max()!)