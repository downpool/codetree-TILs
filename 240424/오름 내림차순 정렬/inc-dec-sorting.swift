import Foundation

let dummy = readLine()

var line = readLine()!.split(separator: " ").map({Int($0)!})

print(line.sorted(by: { $0 < $1 }).map{String($0)}.joined(separator: " "))

print(line.sorted(by: { $0 > $1 }).map{String($0)}.joined(separator: " "))