import Foundation

let nm = readLine()!.split(separator: " ").map{Int($0)!}

var line = readLine()!.split(separator: " ").map{Int($0)!}

for _ in 0 ..< nm[1] {
    var abc = readLine()!.split(separator: " ").map{Int($0)!}

    if abc[0] == 1 {
        line[abc[1] - 1] = abc[2]
    } else if abc[0] == 2 {
        for i in abc[1] - 1 ... abc[2] - 1 {
            if line[i] == 1 {
                line[i] = 0
            }else{
                line[i] = 1
            }
        }
    } else if abc[0] == 3 {
        for i in abc[1] - 1 ... abc[2] - 1 {
            line[i] = 0
        }
    } else {
        for i in abc[1] - 1 ... abc[2] - 1 {
            line[i] = 1
        }
    }
}

print(line.joined(separator: " "))