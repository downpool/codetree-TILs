import Foundation

readLine()
var array1 = readLine()!.split(separator: " ").map({Int($0)!})
var array2 = readLine()!.split(separator: " ").map({Int($0)!})
array1.sort()
array2.sort()

print(array1 == array2 ? "Yes" : "No")