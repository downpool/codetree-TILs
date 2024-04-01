import Foundation

let nm = readLine()!.split(separator: " ").map( { Int($0)! } )
let n = nm[0]
let m = nm[1]
let arr = readLine()!.split(separator: " ").map({Int($0)!})
for _ in stride (from: 0, to: m, by: 1){
    let nums = Int(readLine()!)!
    print(findNumber(arr, nums))
}

func findNumber(_ array: [Int], _ num: Int) -> Int {
    var lefts: Int = 0
    var rights: Int = array.count - 1
    while lefts <= rights {
        var mid = (lefts + rights) / 2
        if array[mid] == num {
            return mid + 1
        }
        if arr[mid] > num {
            rights = mid - 1
        }else{
            lefts = mid + 1
        }
    }
    return -1
}