import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let a: Int = input[0]
let b: Int = input[1]

// Please write your code here.

func isPrime(_ num: Int) -> Bool {
    var count = 0
    for i in 1 ... num {
        if num % i == 0 {
            count += 1
        }
        if count > 2 {
            return false
        }
    }
    if count == 2 {
        return true
    }else{
        return false
    }
}

var anscount = 0

for j in a ... b {
    if isPrime(j) {
        var temp = j
        var tempsum = 0
        while(temp > 0) {
            tempsum += temp % 10
            temp /= 10
        }
        if tempsum % 2 == 0 {
            anscount += 1
        }
    }
}

print(anscount)