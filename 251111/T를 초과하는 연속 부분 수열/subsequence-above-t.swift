let firstLine = readLine()!
let first = firstLine.split(separator: " ").map { Int($0)! }
let n = first[0]
let t = first[1]

let secondLine = readLine()!
let arr = secondLine.split(separator: " ").map { Int($0)! }

// Please write your code here.
var cnt: Int = 0
var array: [Int] = []
if arr[0] > t {
    array.append(arr[0])
}
var maxLength = 0

for i in 1 ..< arr.count {
    if ((arr[i] > t) && ((array.count == 0 ? 0 : array[array.count - 1]) < arr[i])) {
        array.append(arr[i])
    } else if (arr[i] > t) {
        array = [arr[i]]
    } else {
        array = []
    }
    maxLength = maxLength <= array.count ? array.count : maxLength
}

print(maxLength)