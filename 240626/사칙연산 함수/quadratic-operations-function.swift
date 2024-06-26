import Foundation

var answer: Int
var line = readLine()!.split(separator: " ")

switch line[1] {
    case "+":
        answer = Int(line[0])! + Int(line[2])!
        print(line.joined(separator: " ") + " = " + String(answer))
        break
    case "-":
        answer = Int(line[0])! - Int(line[2])!
        print(line.joined(separator: " ") + " = " + String(answer))
        break
    case "*":
        answer = Int(line[0])! * Int(line[2])!
        print(line.joined(separator: " ") + " = " + String(answer))
        break
    case "/":
        answer = Int(line[0])! / Int(line[2])!
        print(line.joined(separator: " ") + " = " + String(answer))
        break
    default:
        print("False")
        break
}