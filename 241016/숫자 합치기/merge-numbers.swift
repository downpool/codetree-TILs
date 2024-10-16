import Foundation

let n = Int(readLine()!)!

var arr = readLine()!.split(separator: " ").map{Int($0)!}

arr.sort()

var sum = -arr[0]

for i in 0 ..< n {
    for j in 0 ... i {
        sum += arr[j]
    }
}

print(sum)