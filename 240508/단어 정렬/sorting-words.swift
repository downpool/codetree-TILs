import Foundation

var array: [String] = []
let n = Int(readLine()!)!

for _ in 0 ..< n {
    let temp = readLine()!
    array.append(temp)
}

array.sort()

for i in array {
    print(i)
}