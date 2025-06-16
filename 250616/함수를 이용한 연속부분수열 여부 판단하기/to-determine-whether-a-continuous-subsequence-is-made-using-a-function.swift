import Foundation

let firstLine = readLine()!
let firstParts = firstLine.split(separator: " ").map { Int($0)! }
let n1 = firstParts[0]
let n2 = firstParts[1]

let a = readLine()!.split(separator: " ").map { Int($0)! }
let b = readLine()!.split(separator: " ").map { Int($0)! }

// Please write your code here.

func isRight(_ nums1: [Int], _ nums2: [Int]) -> Bool {
    if nums1.count < nums2.count {
        return false
    }
    for i in 0 ... nums1.count - nums2.count {
        if nums1[i] == nums2[0] {
            var temp = i
            var ans = true
            for j in 0 ..< nums2.count {
                if nums1[temp] == nums2[j] {
                    temp += 1
                }else{
                    ans = false
                    break
                }
            }
            if ans {
                return true
            }
        }
    }
    return false
}

if isRight(a, b) {
    print("Yes")
}else{
    print("No")
}