import Foundation

let nandk = readLine()!.split(separator: " ").map({Int($0)!})

var array: [Int] = []
var num = nandk[1]
for _ in stride(from: 0, to: nandk[0], by: 1) {
    array.append(Int(readLine()!)!)
}

var count = 0
array.reverse()
var i = 0
while num > 0 {
    count += num / array[i]
    num = num % array[i]
    i += 1
}

print(count)