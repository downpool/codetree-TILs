import Foundation

let input = readLine()!
let values = input.split(separator: " ").map { Int(String($0))! }
let m1 = values[0]
let d1 = values[1]
let m2 = values[2]
let d2 = values[3]

let dates = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
let month = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

// Please write your code here.
var gap: Int = 0
if m1 < m2 {
    for i in m1 ..< m2 {
        gap += month[i]
    }
    if d1 < d2 {
        gap = (d2 - d1 + gap) % 7
    } else if d1 == d2 {
        gap %= 7
    } else {
        gap = (gap - d1 + d2) % 7
    }
} else if m1 == m2 {
    if d1 < d2 {
        gap = (d2 - d1) % 7
    } else if d1 == d2 {
        gap = 0
    } else {
        gap = (42 - d1 + d2) % 7
    }
} else {
    for i in m2 ..< m1 {
        gap += month[i]
    }
    gap = 392 - gap
    if d1 < d2 {
        gap = (d2 - d1 + gap) % 7
    } else if d1 == d2 {
        gap %= 7
    } else {
        gap = (gap - d1 + d2) % 7
    }
}
print(dates[gap])