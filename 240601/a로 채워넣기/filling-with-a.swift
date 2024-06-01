import Foundation

var line = readLine()!.split(separator: "")

line[1] = "a"
line[line.count - 2] = "a"

print(line.joined(separator: ""))