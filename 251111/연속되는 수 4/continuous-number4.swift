import Foundation

let n = Int(readLine()!)!
var numbers = [Int]()
for _ in 0..<n {
    numbers.append(Int(readLine()!)!)
}

// Please write your code here.
var cnt: Int = 1
var array: [Int] = [numbers[0]]
var maxLength = 1

for i in 1 ..< numbers.count {
    if array[array.count - 1] < numbers[i] {
        array.append(numbers[i])
    } else {
        array = [numbers[i]]
    }
    maxLength = maxLength <= array.count ? array.count : maxLength
}

print(maxLength)