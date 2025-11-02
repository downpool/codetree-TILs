import Foundation

let n = Int(readLine()!)!
var numbers: [Int] = []
for _ in 0..<n {
    numbers.append(Int(readLine()!)!)
}

// Please write your code here.

var cnt = 1;
var max = 0;
for i in 1 ..< n {
    if(numbers[i] == numbers[i - 1]) {
        cnt += 1
    }else{
        max = max < cnt ? cnt : max
        cnt = 1
    }
}

print(max)
