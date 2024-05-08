import Foundation

class langs {
    var secretCode: String = ""
    var meetingPoint: String = ""
    var time: Int = 0
}

let line = readLine()!.split(separator: " ")

var lang = langs()
lang.secretCode = String(line[0])
lang.meetingPoint = String(line[1])
lang.time = Int(line[2])!

print("secret code : \(lang.secretCode)")
print("meeting point : \(lang.meetingPoint)")
print("time : \(lang.time)")