let input = readLine()!.split(separator: " ").map { Int($0)! }
let m1 = input[0]
let d1 = input[1]
let m2 = input[2]
let d2 = input[3]

let month = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

// Please write your code here.
var gap: Int = 0
for i in m1 ..< m2 {
    gap += month[i]
}
gap = gap + d2 - d1 + 1

print(gap)