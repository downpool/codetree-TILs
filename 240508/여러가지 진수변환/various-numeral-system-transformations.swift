import Foundation

var line = readLine()!.split(separator: " ").map({Int($0)!})

print(String(line[0], radix: line[1]))