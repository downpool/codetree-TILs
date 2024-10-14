import Foundation

let _ = readLine()!
let MAX_N = 100000

var arr = readLine()!.split(separator: " ").map{Int($0)!}

var ans = Int.min

var sum = 0

for i in 0 ..< arr.count {
    if sum < 0 {
        sum = arr[i]
    } else {
        sum += arr[i]
    }

    ans = max(ans, sum)
}

print(ans)