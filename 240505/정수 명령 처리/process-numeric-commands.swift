import Foundation

var n = Int(readLine()!)!

var array: [Int] = []

for _ in stride(from: 0, to: n, by: 1) {
    let line = readLine()!.split(separator: " ")
    if line[0] == "push" {
        array.append(Int(line[1])!)
    }else if (line[0] == "pop") {
        print(array[array.count - 1])
        array.removeLast()
    }else if (line[0] == "size") {
        print(array.count)
    }else if (line[0] == "empty") {
        if array.isEmpty {
            print("1")
        }else{
            print("0")
        }
    }else{
        print(array[array.count - 1])
    }
}