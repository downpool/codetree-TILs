import Foundation

let n = Int(readLine()!)!

if n % 2 == 0 && sums(n) {
    print("Yes")
}else{
    print("No")
}

func sums(_ n: Int) -> Bool {
    var sum = 0
    for i in String(n) {
        sum += Int(String(i))!
    }
    return (sum % 5 == 0)
}