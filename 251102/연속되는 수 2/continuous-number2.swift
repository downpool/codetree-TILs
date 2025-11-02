import Foundation

let n = Int(readLine()!)!
var numbers: [Int] = []
for _ in 0..<n {
    numbers.append(Int(readLine()!)!)
}

// Please write your code here.

var cnt = 0;
for i in 0 ..< n {
    if(i == 0 || numbers[i] != numbers[i - 1]){
        cnt += 1
    }
}

print(cnt)
