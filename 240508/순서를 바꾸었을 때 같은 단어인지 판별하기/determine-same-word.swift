import Foundation

var one = readLine()!.split(separator: "")
var two = readLine()!.split(separator: "")

one.sort()
two.sort()

print(one == two ? "Yes" : "No")