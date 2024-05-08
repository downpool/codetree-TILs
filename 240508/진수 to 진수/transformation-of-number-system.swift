import Foundation


var line = readLine()!.split(separator: " ").map({Int($0)!})
var n = readLine()!

var temp = Int(n, radix: line[0])!
print(String(temp, radix: line[1]))