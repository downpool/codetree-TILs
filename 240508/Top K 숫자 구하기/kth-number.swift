import Foundation

let nk = readLine()!.split(separator: " ").map({Int($0)!})

var nums = readLine()!.split(separator: " ").map({Int($0)!})

nums.sort()

print(nums[nk[1] - 1])