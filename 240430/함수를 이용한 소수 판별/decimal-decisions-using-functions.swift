import Foundation

let ab = readLine()!.split(separator: " ").map({Int($0)!})

func isPrime(_ n: Int) -> Bool {
    if n == 1 {return false}
    var count = 0
    for i in stride(from: 1, through: n, by: 1){
        if n % i == 0 {
            count += 1
        }
    }
    if count == 2 {
        return true
    }else{
        return false
    }
}
var sum = 0
for i in stride (from: ab[0], through: ab[1], by: 1) {
    sum += isPrime(i) ? i : 0
}

print(sum)