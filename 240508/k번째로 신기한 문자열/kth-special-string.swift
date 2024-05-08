import Foundation

let line = readLine()!.split(separator: " ")

var array: [String] = []

for _ in 0 ..< Int(line[0])! {
    let temp = readLine()!
    if temp.hasPrefix(line[2]) {
        array.append(temp)
    }
}

array.sort()

print(array[Int(line[1])! - 1])