import Foundation

let n = Int(readLine()!)!

var array = [Int](repeating: 0, count: 20)

array[0] = 1
array[1] = 1

func dps(_ n: Int) -> Int {
    var num = 0

    for i in 0 ..< n {
        num += array[i] * array[n - i - 1]
    }

    return num
}

if n >= 2 {
    for i in 2 ... n {
        array[i] = dps(i)
    }
}

print(array[n])