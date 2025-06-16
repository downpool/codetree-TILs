let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int($0)! }

// Please write your code here.

for i in arr {
    if i < 0 {
        print(i * (-1), terminator: " ")
    }else{
        print(i, terminator: " ")
    }
}