import Foundation

let abc = readLine()!.split(separator: " ").map( {Int($0)!} )

func minmin(_ arr: [Int]) -> Int {
    return arr.min()!
}

print(minmin(abc))