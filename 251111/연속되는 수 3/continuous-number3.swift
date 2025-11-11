import Foundation

let n = Int(readLine()!)!
var numbers = [Int]()
for _ in 0..<n {
    numbers.append(Int(readLine()!)!)
}

// Please write your code here.
var cnt: Int = 1
var max: Int = 0
var isPlus: Bool = numbers[0] >= 0 ? true : false

for i in 1 ..< numbers.count {
    if isPlus == (numbers[i] >= 0 ? true : false) {
        cnt += 1
    }else{
        isPlus = isPlus ? false : true
        cnt = 1
    }

    max = max < cnt ? cnt : max
}

print(max)