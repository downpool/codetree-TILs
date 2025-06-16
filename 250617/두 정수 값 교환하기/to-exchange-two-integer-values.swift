let inputLine = readLine()!
let numbers = inputLine.split(separator: " ").map { Int($0)! }
let n = numbers[0]
let m = numbers[1]

// Please write your code here.

func swap(_ a: Int, _ b: Int) -> [Int] {
    return [b, a]
}

let i = swap(n, m)

print(i[0], i[1])