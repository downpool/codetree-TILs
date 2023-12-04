import Foundation

var n = readLine()!

var line = readLine()!.split(separator: " ").map{Int($0)!}
var countArray: [Int] = Array(repeating: 0, count: 9)

for i in line {
    countArray[i - 1] += 1
}

countArray.forEach {
    print($0)
}