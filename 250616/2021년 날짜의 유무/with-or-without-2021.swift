import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let m = input[0]
let d = input[1]

// Please write your code here.

let one = [1, 3, 5, 7, 8, 10, 12]
let noOne = [4, 6, 9, 11]
let two = [2]

func containn(_ month: Int) -> Int {
    if one.contains(month) {
        return 31
    }else if noOne.contains(month) {
        return 30
    }else if two.contains(month) {
        return 28
    }else{
        return -1
    }
}

if containn(m) >= d {
    print("Yes")
}else{
    print("No")
}